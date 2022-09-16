import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

@freezed
class Post with _$Post {
  const factory Post({
    @Default('Mamuka') String firstName,
    @Default('Jgenti') String lastName,
    @Default('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&w=1000&q=80')
        String imageUrl,
    required DateTime postDate,
    String? postText,
    @Default('All news') String category,
    @Default(0) int likes,
    @Default(false) bool isLiked,
    @Default(<String>[]) List<String> comments,
    @Default(false) bool isFavorite,
    @Default('') String id,
  }) = _Post;
}

// @freezed
// class Post with _$Post {
//   const factory Post({
//     required String firstName,
//     required String lastName,
//     @Default('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&w=1000&q=80')
//         String imageUrl,
//     required DateTime postDate,
//     required String postText,
//     String? category,
//     @Default(0) int likes,
//     @Default(false) bool isLiked,
//     @Default(<String>[]) List<String> comments,
//     @Default(false) bool isFavorite,
//   }) = _Post;
// }
