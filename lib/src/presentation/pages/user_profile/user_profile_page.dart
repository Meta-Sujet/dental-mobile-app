import 'package:auto_route/auto_route.dart';
import 'package:dental_mobile_app/src/presentation/model/common/internet_connection_cubit/internet_connection_cubit.dart';
import 'package:dental_mobile_app/src/presentation/post_cubit/post_cubit.dart';
import 'package:dental_mobile_app/src/presentation/widgets/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../di/injection_config.dart';
import '../../model/common/user.dart';
import '../../navigation/routes/router.gr.dart';
import '../../post_cubit/post_model.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: const TabBar(
              labelColor: Color(0xFF4AC1E0),
              unselectedLabelColor: Color(0xFF536471),
              indicatorColor: Color(0xFF4AC1E0),
              indicatorWeight: 1,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: <Widget>[
                Tab(
                  text: 'Profile',
                ),
                Tab(
                  text: 'Posts',
                ),
                Tab(
                  text: 'Saved',
                ),
                Tab(
                  text: 'Salary',
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            ProfileTab(),
            PostsTab(),
            SavedTab(),
            Center(
              child: Text("salary"),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userData = getIt<UserCubit>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Mobile number'),
              SizedBox(height: 25),
              Text('Email'),
              SizedBox(height: 25),
              Text('Position'),
              SizedBox(height: 25),
              Text('EHR Position'),
              SizedBox(height: 25),
              Text('Organization, Branch'),
              SizedBox(height: 25),
              Text('Date of birth'),
              SizedBox(height: 25),
              Text('Salary Type'),
              SizedBox(height: 25),
              Text('Salary '),
              SizedBox(height: 25),
            ],
          ),
          const SizedBox(width: 35),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userData.phone,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                userData.email,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                userData.workplace,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'EHR Position',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                userData.address,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                DateFormat("yMMMd").format(DateTime.parse(userData.birthDate)),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Salary Type',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                userData.balance,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ],
      ),
    );
  }
}

class PostsTab extends StatefulWidget {
  const PostsTab({Key? key}) : super(key: key);

  @override
  State<PostsTab> createState() => _PostsTabState();
}

class _PostsTabState extends State<PostsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
      child: BlocBuilder<PostCubit, List<Post>>(
        builder: (context, state) {
          if (state.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.hourglass_empty,
                      color: Color(0xFF4AC1E0),
                      size: 80,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Empty Sheet',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Click on the button create \na new Sheet',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 50),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              context.router.push(CreateEditPost());
                            },
                            child: Text('Create'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: state.length,
              itemBuilder: (context, index) {
                return PostWidget(
                  postModel: state[index],
                );
              },
            );
          }
        },
      ),
    );
  }
}

class SavedTab extends StatelessWidget {
  const SavedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
      child: BlocBuilder<PostCubit, List<Post>>(
        builder: (context, state) {
          var savedPosts =
              state.where((element) => element.isFavorite).toList();
          return ListView.builder(
            itemCount: savedPosts.length,
            itemBuilder: (context, index) {
              return PostWidget(
                postModel: savedPosts[index],
              );
            },
          );
        },
      ),
    );
  }
}
