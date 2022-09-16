import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/injection_config.dart';
import '../model/common/user.dart';
import '../post_cubit/post_cubit.dart';
import '../post_cubit/post_model.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({
    Key? key,
    this.postModel,
    this.postIndex,
  }) : super(key: key);

  final Post? postModel;
  final int? postIndex;

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  // bool favorited = false;

  // void fav() {
  //   setState(() {
  //     favorited = !favorited;
  //   });
  //   print(favorited);
  // }

  @override
  Widget build(BuildContext context) {
    var userData = getIt<UserCubit>().state;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    clipBehavior: Clip.hardEdge,
                    child: Image.network(widget.postModel!.imageUrl),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${userData.firstName} ${userData.lastName}',
                      ),
                      Text(
                        '${DateTime.now().minute - widget.postModel!.postDate.minute} minutes ago',
                        // '5 seconds ago',
                        style: const TextStyle(
                          color: Color(0xFF536471),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    splashRadius: 15,
                    onPressed: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        context: context,
                        builder: (_) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 30),
                          child: Container(
                            height: 120,
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: -40,
                                  left: MediaQuery.of(context).size.width / 2 -
                                      45,
                                  child: Container(
                                    height: 4,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton.icon(
                                      onPressed: () async {
                                        await context.router.pop();

                                        showDialogFunc(
                                            context, widget.postModel!);
                                      },
                                      icon: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color(0xFFFE294D)
                                              .withOpacity(0.15),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                      label: const Text('Delete Post',
                                          style: TextStyle(
                                              color: Color(0xff2D363D))),
                                    ),
                                    TextButton.icon(
                                      onPressed: () {
                                        // context.navigateTo(CreateEditPost());
                                        BlocProvider.of<PostCubit>(context)
                                            .onEditPressed(widget.postModel!);
                                      },
                                      icon: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color(0xFF4FD1C5)
                                              .withOpacity(0.15),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.edit,
                                            color: Color(0xff4FD1C5),
                                          ),
                                        ),
                                      ),
                                      label: const Text(
                                        'Edit Post',
                                        style: const TextStyle(
                                            color: const Color(0xff2D363D)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                constraints: const BoxConstraints(maxHeight: 125),
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  widget.postModel!.postText.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 7,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 14, height: 1.3, color: Color(0xFF0F1419)),
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      BlocBuilder<PostCubit, List<Post>>(
                        builder: (context, state) {
                          return IconButton(
                            padding: EdgeInsets.zero,
                            splashRadius: 15,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              BlocProvider.of<PostCubit>(context)
                                  .onLikePressed(widget.postModel!);
                            },
                            icon: Icon(
                              widget.postModel!.isLiked
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              color: widget.postModel!.isLiked
                                  ? Colors.red
                                  : Colors.black,
                            ),
                          );
                        },
                      ),
                      // const SizedBox(width: 6),
                      // Text(favorited ? '1' : '0'),
                    ],
                  ),
                  const SizedBox(width: 35),
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        splashRadius: 15,
                        constraints: const BoxConstraints(),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.comment_outlined,
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Text('0'),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    padding: EdgeInsets.zero,
                    splashRadius: 15,
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                    ),
                  ),
                  const SizedBox(width: 22),
                  IconButton(
                    padding: EdgeInsets.zero,
                    splashRadius: 15,
                    constraints: const BoxConstraints(),
                    onPressed: () {
                      BlocProvider.of<PostCubit>(context)
                          .onFavoritePressed(widget.postModel!);
                    },
                    icon: Icon(
                      widget.postModel!.isFavorite
                          ? Icons.star
                          : Icons.star_outline,
                      color: widget.postModel!.isFavorite
                          ? Colors.yellow
                          : Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              SizedBox(
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      hintText: 'Write a comment',
                      hintStyle: const TextStyle(color: Color(0xFF536471))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<T?> showDialogFunc<T>(BuildContext context, Post post) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Container(
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: 50,
                ),
                SizedBox(height: 30),
                Text(
                  'Are you sure you want to\ndelete post?',
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF4AC1E0).withOpacity(0.20)),
                        onPressed: () {
                          context.router.pop(false);
                        },
                        child: Text(
                          'No',
                          style: TextStyle(
                            color: Color(0xFF4AC1E0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          context.router.pop(true);
                        },
                        child: Text('Yes'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  ).then((value) {
    if (value) {
      BlocProvider.of<PostCubit>(context).onDeletePressed(post);
      context.router.pop();
    } else {
      context.router.pop();
    }
  });
}
