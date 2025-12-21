import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/Home_screen.dart';

class BottomNavBar extends StatefulWidget {
   BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
 final appScreen =[
  HomeScreen(),
  Center(child: Text('SEARCH')),
  Center(child: Text('TICKET')),
  Center(child: Text('PROFILE'))
 ];
  // _ means private key which is accessable to class only 
  //change our index for BottomNavBar
  int _selectedIndex =0;
   void _onitemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
   }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: appScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onitemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Color(0xFF9E9E9E),
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_home_add_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
          label: 'HOME'),
           BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_search_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
          label: 'SEARCH  '),
           BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_ticket_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
          label: 'TICKET'),
           BottomNavigationBarItem(icon:Icon(FluentSystemIcons.ic_fluent_person_regular),
          activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          label: 'PROFILE'),
        ],
      ),
    );
  }
}