import 'package:coursera/configration/App_colors.dart';
import 'package:flutter/material.dart';
import '../Pages/Book_mark.dart';
import '../Pages/Explore.dart';
import '../Pages/User_home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0
          ? const UserHomePage()
          : _selectedIndex == 1
          ? const ExplorePage()
          : _selectedIndex == 2
          ? const BookMarkPage()
          : const Center(
        // child: Text(
        //   'Other Tab Selected',
        //   style: TextStyle(fontSize: 24),
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: AppColors.primary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
        ],
      ),
    );
  }
}
