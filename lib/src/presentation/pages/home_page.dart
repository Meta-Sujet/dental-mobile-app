import 'package:auto_route/auto_route.dart';
import 'package:dental_mobile_app/src/presentation/navigation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  Color get color {
    switch (_selectedIndex) {
      case 0:
        return const Color(0xFFF56B21);
      case 1:
        return const Color(0xFF8E5DFF);
      case 2:
        return const Color(0xFF4FD1C5);
      case 3:
        return const Color(0xFF35A2FF);
      case 4:
        return const Color(0xFFFFB800);
      default:
        return Colors.grey;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('user_profile');
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&w=1000&q=80'),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      prefixIcon: IconButton(
                        onPressed: () => {},
                        icon: const Icon(Icons.search),
                        color: const Color(0xFFADB5BD),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      hintText: 'Search',
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(53, 162, 255, 0.15)),
                child: IconButton(
                  onPressed: () {
                    // Navigator.of(context).pushNamed(Routes.chat);
                  },
                  icon: const Icon(Icons.message),
                  color: const Color(0xFF4AC1E0),
                  highlightColor: Colors.grey.shade200,
                  splashColor: Colors.transparent,
                  splashRadius: 18,
                  iconSize: 15,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromRGBO(245, 107, 33, 0.15),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                  color: const Color(0xFFFFB800),
                  highlightColor: Colors.grey.shade200,
                  splashColor: Colors.transparent,
                  splashRadius: 18,
                  iconSize: 15,
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        );
      },
      routes: const [
        NewsFeedRouter(),
        CalendarRouter(),
        MyCabinetRouter(),
        UserProfileRouter(),
        MenuRouter(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return SizedBox(
          height: 105,
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(245, 107, 33, 0.15)),
                      child: const Icon(
                        Icons.newspaper,
                        color: const Color(0xFFF56B21),
                        size: 20,
                      ),
                    ),
                    Positioned(
                      top: -12,
                      left: -20,
                      child: Container(
                        width: 66,
                        height: 2,
                        decoration: BoxDecoration(
                          color:
                              _selectedIndex == 0 ? color : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'News Feed',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(142, 93, 255, 0.15)),
                      child: const Icon(
                        Icons.calendar_month,
                        color: const Color(0xFF8E5DFF),
                        size: 20,
                      ),
                    ),
                    Positioned(
                      top: -12,
                      left: -20,
                      child: Container(
                        width: 66,
                        height: 2,
                        decoration: BoxDecoration(
                          color:
                              _selectedIndex == 1 ? color : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(79, 209, 197, 0.15)),
                      child: const Icon(
                        Icons.cabin_outlined,
                        color: const Color(0xFF4FD1C5),
                        size: 20,
                      ),
                    ),
                    Positioned(
                      top: -12,
                      left: -20,
                      child: Container(
                        width: 66,
                        height: 2,
                        decoration: BoxDecoration(
                          color:
                              _selectedIndex == 2 ? color : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'My Cabinet',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(53, 162, 255, 0.15)),
                      child: const Icon(
                        Icons.person,
                        color: const Color(0xFF35A2FF),
                        size: 20,
                      ),
                    ),
                    Positioned(
                      top: -12,
                      left: -20,
                      child: Container(
                        width: 66,
                        height: 2,
                        decoration: BoxDecoration(
                          color:
                              _selectedIndex == 3 ? color : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color.fromRGBO(79, 209, 197, 0.15)),
                      child: const Icon(
                        Icons.menu,
                        color: const Color(0xFFFFB800),
                        size: 20,
                      ),
                    ),
                    Positioned(
                      top: -12,
                      left: -20,
                      child: Container(
                        width: 66,
                        height: 2,
                        decoration: BoxDecoration(
                          color:
                              _selectedIndex == 4 ? color : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
                label: 'Menu',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            selectedFontSize: 12,
            unselectedItemColor: const Color(0xFF536471),
            selectedItemColor: color,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
              _onItemTapped(index);
            },
          ),
        );
      },
    );
  }
}
