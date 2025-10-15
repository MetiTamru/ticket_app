import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appScreens = [
    Center(child: const Text("Home")),
    Center(child: const Text("Search")),
    Center(child: const Text("Ticket")),
    Center(child: const Text("Profile")),
  ];
  //change our index for bottom navbar

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      //changes the state of the body without hot reload to update the ui
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Ticket")),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF526400),
        unselectedItemColor: const Color.fromARGB(255, 6, 7, 2),
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            label: "ticket",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            label: "profile",
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          ),
        ],
      ),
    );
  }
}
