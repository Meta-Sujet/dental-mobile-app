import 'package:collection/collection.dart';

typedef _Function1<A, B> = B Function(A a);

A _id<A>(A a) => a;

abstract class Either<L, R> {
  const Either();

  B fold<B>(B Function(L l) ifLeft, B Function(R r) ifRight);

  Either<L, R> orElse(Either<L, R> Function() other) =>
      fold((_) => other(), (_) => this);

  R? get get => fold((L l) => null, _id);

  R get rightOrThrow =>
      getOrElse(() => throw Exception('rightOrThrow called on Left'));

  L get leftOrThrow =>
      fold(_id, (R r) => throw Exception('leftOrThrow called on Right'));

  R getOrElse(R Function() dflt) => fold((_) => dflt(), _id);

  R operator |(R dflt) => getOrElse(() => dflt);

  Either<L2, R> leftMap<L2>(L2 Function(L l) f) =>
      fold((L l) => left(f(l)), right);

  bool isLeft() => fold((_) => true, (_) => false);

  bool isRight() => fold((_) => false, (_) => true);

  Either<L, R2> map<R2>(R2 Function(R r) f) => fold(left, (R r) => right(f(r)));

  Either<L, R2> bind<R2>(_Function1<R, Either<L, R2>> f) => fold(left, f);

  Either<L, R2> flatMap<R2>(_Function1<R, Either<L, R2>> f) => fold(left, f);

  Either<L, R2> andThen<R2>(Either<L, R2> next) => fold(left, (_) => next);

  @override
  String toString() => fold((L l) => 'Left($l)', (R r) => 'Right($r)');

  B foldLeft<B>(B z, B Function(B previous, R r) f) =>
      fold((_) => z, (R a) => f(z, a));

  B foldRight<B>(B z, B Function(R r, B previous) f) =>
      fold((_) => z, (R a) => f(a, z));
}

class _Left<L, R> extends Either<L, R> {
  const _Left(this._l);

  final L _l;

  L get value => _l;

  @override
  B fold<B>(B Function(L l) ifLeft, B Function(R r) ifRight) => ifLeft(_l);

  @override
  bool operator ==(Object other) =>
      other is _Left && const DeepCollectionEquality().equals(other._l, _l);

  @override
  int get hashCode => _l.hashCode;
}

class _Right<L, R> extends Either<L, R> {
  const _Right(this._r);

  final R _r;

  R get value => _r;

  @override
  B fold<B>(B Function(L l) ifLeft, B Function(R r) ifRight) => ifRight(_r);

  @override
  bool operator ==(Object other) =>
      other is _Right && const DeepCollectionEquality().equals(other._r, _r);

  @override
  int get hashCode => _r.hashCode;
}

Either<L, R> left<L, R>(L l) => _Left<L, R>(l);

Either<L, R> right<L, R>(R r) => _Right<L, R>(r);
