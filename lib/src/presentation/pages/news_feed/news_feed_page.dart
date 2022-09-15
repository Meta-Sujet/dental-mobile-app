import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:dental_mobile_app/src/presentation/navigation/routes/router.gr.dart';
import 'package:dental_mobile_app/src/presentation/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../post_cubit/post_cubit.dart';
import '../../post_cubit/post_model.dart';

class NewsFeedPage extends StatefulWidget {
  const NewsFeedPage({Key? key}) : super(key: key);

  @override
  State<NewsFeedPage> createState() => _NewsFeedPageState();
}

class _NewsFeedPageState extends State<NewsFeedPage> {
  var indx = 0;

  void tst(int index) {
    // print(index);
    setState(() {
      indx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const categories = ['All news', 'Clinic news', 'Patients', 'Employees'];
    print(categories[indx]);
    return Scaffold(
      backgroundColor: const Color(0xFFEDF3FF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 33,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
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
                            : const Color(0xFF4AC1E0),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          BlocBuilder<PostCubit, List<Post>>(
            builder: (context, state) {
              return Expanded(
                child: ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (state.isNotEmpty) {
                      if (categories[indx] == 'All news') {
                        return PostWidget(
                          postModel: state[index],
                        );
                      } else if (categories[indx] == state[index].category) {
                        return PostWidget(
                          postModel: state[index],
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    } else {
                      return Center(
                        child: Text('Empty Sheet'),
                      );
                    }
                  },
                ),
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(CreateEditPost()).then((value) => print(value));
        },
        child: Icon(Icons.add),
        backgroundColor: const Color(0xFF4AC1E0),
      ),
    );
  }
}

class Flo extends StatelessWidget {
  const Flo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        BlocProvider.of<PostCubit>(context).addPost(
          Post(
              postText: 'patients',
              postDate: DateTime.now(),
              category: 'Patients'),
        );
      },
      child: const Icon(Icons.add),
      backgroundColor: const Color(0xFF4AC1E0),
    );
  }
}
