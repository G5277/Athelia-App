import 'package:athelia/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:athelia/screens/home/home_page.dart';
import 'package:athelia/screens/hub/hub_page.dart';
import 'package:athelia/screens/community/community_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  static const String id = '/';

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _index = 0;
  void _pageNavigation(int index) {
    setState(() {
      _index = index;
    });
  }

  static final List<Widget> _pages = [
    HomePage(),
    HubPage(),
    ProfilePage(),
    CommunityPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // padding: EdgeInsets.all(12),
          child: _pages.elementAt(_index),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey[900],
          selectedItemColor: Colors.grey[900],
          showUnselectedLabels: true,
          currentIndex: _index,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: const Icon(Icons.hub), label: 'Hub'),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: 'Lounge',
            ),
          ],
          onTap: _pageNavigation,
        ),
      ),
    );
  }
}
