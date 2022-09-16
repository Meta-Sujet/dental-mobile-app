import 'package:auto_route/auto_route.dart';
import 'package:dental_mobile_app/src/presentation/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/injection_config.dart';
import '../../model/common/user.dart';
import '../../post_cubit/post_cubit.dart';
import '../../post_cubit/post_model.dart';

class CreateEditPost extends StatefulWidget {
  const CreateEditPost({Key? key, this.post}) : super(key: key);

  final Post? post;

  @override
  State<CreateEditPost> createState() => _CreateEditPostState();
}

class _CreateEditPostState extends State<CreateEditPost> {
  int? indx;

  void tst(int index) {
    print(index);
    if (indx == index) {
      setState(() {
        indx = null;
      });
    } else {
      setState(() {
        indx = index;
      });
    }
  }

  TextEditingController _cont = TextEditingController();
  final List<String> categories = [
    'All news',
    'Clinic news',
    'Patients',
    'Employees'
  ];

  @override
  void initState() {
    super.initState();
    // if (widget.post != null) {
    //   final category = widget.post!.category;
    // }
    if (widget.post != null) {
      _cont.text = widget.post!.postText!;
      final category = widget.post!.category;
      int categoryIndex = categories.indexOf(category);
      indx = categoryIndex;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    var userData = getIt<UserCubit>().state;

    print(keyboardHeight);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.5,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Color(0xFF78818F),
            ),
          ),
          title: Text(
            widget.post == null ? 'Create Post' : 'Edit Post',
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 30),
              child: TextButton(
                onPressed: () {
                  if (_cont.text.isNotEmpty && indx != null) {
                    if (widget.post == null) {
                      BlocProvider.of<PostCubit>(context).addPost(
                        Post(
                            postDate: DateTime.now(),
                            postText: _cont.text,
                            category:
                                indx == null ? '' : categories[indx ?? 0]),
                      );
                      context.router.pop(true);
                    } else {
                      BlocProvider.of<PostCubit>(context).editPost(
                        widget.post!,
                        Post(
                          postDate: DateTime.now(),
                          postText: _cont.text,
                          category: indx == null ? '' : categories[indx ?? 0],
                          isLiked: widget.post!.isLiked,
                          isFavorite: widget.post!.isFavorite,
                        ),
                      );
                      context.router.pop();
                    }
                  }

                  // Navigator.of(context).pop(_cont.text);
                },
                style: TextButton.styleFrom(
                    primary: Colors.red,
                    backgroundColor: _cont.text.isEmpty || indx == null
                        ? Color(0xFFEBEDF0)
                        : Color(0xFF4AC1E0)),
                child: Text(
                  widget.post == null ? 'Post' : 'Edit',
                  style: TextStyle(
                    fontSize: 13,
                    color: _cont.text.isEmpty || indx == null
                        ? Color(0xFF536471)
                        : Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&w=1000&q=80'),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '${userData.firstName} ${userData.lastName}',
                    ),
                  ],
                ),
              ),
              TextField(
                autofocus: true,
                maxLines: 7,
                keyboardType: TextInputType.multiline,
                controller: _cont,
                onChanged: (txt) {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  hintText: 'What\'s on your mind?',
                  hintStyle: TextStyle(color: Color(0xFF536471), fontSize: 14),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                // controller: _cont,
              ),
              const Divider(color: Color(0xFFD8DADE)),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      'Choose category',
                      style: TextStyle(color: Color(0xFFA9B1B8)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    height: 33,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (_, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                color: Color(0xFFF5F5FA),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              primary: index == indx
                                  ? const Color(0xFF4AC1E0)
                                  : Colors.white,
                              elevation: 0,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: () => tst(index),
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                fontSize: 14,
                                color: index == indx
                                    ? Colors.white
                                    : const Color(0xFF536471),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Divider(color: Color(0xFFD8DADE)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Text(
                          'Add to your post',
                          style: TextStyle(
                              color: const Color(0xFF536471).withOpacity(0.5)),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          splashRadius: 20,
                          icon: const Icon(
                            Icons.video_call,
                            color: Color(0xFF4AC1E0),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.photo_album,
                            color: Color(0xFF4AC1E0),
                          ),
                          splashRadius: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.photo,
                            color: Color(0xFF4AC1E0),
                          ),
                          splashRadius: 20,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ]));
  }
}
