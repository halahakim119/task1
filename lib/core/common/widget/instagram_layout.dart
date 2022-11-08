import 'package:flutter/material.dart';
import 'package:task1/screens/task3_instagram/hala_pofile.dart';
import 'package:task1/screens/task3_instagram/instagram_home_screen.dart';


import 'package:task1/widgets/instagram_widgets/application_toolbar.dart';
// import 'package:task1/dummy_data.dart';

// import 'package:task1/screens/instagram_home_screen.dart';

class InstagramLayout extends StatefulWidget {
  @override
  State<InstagramLayout> createState() => _InstagramLayoutState();
}

class _InstagramLayoutState extends State<InstagramLayout> {
  int state = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    InstagramHomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
    HalaProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      state = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: false,
        backgroundColor: Colors.white,
        appBar: state == 0
            ? ApplicationToolbar(
                iconLeading: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black,
                ),
                actionsApp: const [
                  Icon(
                    Icons.near_me_outlined,
                    color: Colors.black,
                  )
                ],
              )
            : state == 1
                ? ApplicationToolbar()
                : state == 2
                    ? ApplicationToolbar()
                    : state == 3
                        ? ApplicationToolbar()
                        : ApplicationToolbar(
                            actionsApp: const [
                              Icon(
                                Icons.more_vert,
                                color: Colors.black,
                              )
                            ],
                          ),
        body: _widgetOptions.elementAt(state),
        
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: state,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Reels',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
