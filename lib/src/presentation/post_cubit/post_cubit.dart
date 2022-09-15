import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/injection_config.dart';
import '../navigation/routes/router.gr.dart';
import 'post_model.dart';

class PostCubit extends Cubit<List<Post>> {
  PostCubit() : super([]);

  void addPost(Post post) {
    final posts = List.of(state);

    emit(posts..add(post));
  }

  void editPost(Post post, Post editedPost) {
    final index = state.indexOf(post);
    if (index == -1) {
      return;
    }
    final posts = List.of(state);
    posts.removeAt(index);
    posts.insert(index, editedPost);

    emit(posts);
  }

  void onDeletePressed(Post post) {
    final index = state.indexOf(post);
    if (index == -1) {
      return;
    }

    final posts = List.of(state);
    posts.removeAt(index);
    // posts.insert(index, post.copyWith(isFavorite: !post.isFavorite));

    // log(posts.toString());
    emit(posts);
  }

  void onLikePressed(Post post) {
    final index = state.indexOf(post);
    if (index == -1) {
      return;
    }

    final posts = List.of(state);
    posts.removeAt(index);
    posts.insert(index, post.copyWith(isLiked: !post.isLiked));

    // log(posts.toString());
    emit(posts);
  }

  void onFavoritePressed(Post post) {
    final index = state.indexOf(post);
    if (index == -1) {
      return;
    }

    final posts = List.of(state);
    posts.removeAt(index);
    posts.insert(index, post.copyWith(isFavorite: !post.isFavorite));

    // log(posts.toString());
    emit(posts);
  }

  void onEditPressed(Post editPost) {
    getIt<AppRouter>().push(CreateEditPost(post: editPost));
    getIt<AppRouter>().pop();
  }
}
