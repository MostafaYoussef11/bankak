

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class bottomBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
      return _bottomBarState();
  }
  
  
}

class _bottomBarState extends State<bottomBar>{
  int _selectIndex = 3;
  static final List<Widget> _widgetOption = <Widget>[
    const Text("Home"),
    const Text("Ticket"),
    const Text("Search"),
    const Text("Person")

  ];
  void _onItemTapped(int index){
    setState((){
      _selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: const Text("Ticket Booking") , centerTitle: true),
        body: Center(child: _widgetOption[_selectIndex]),
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _selectIndex,
          onTap: _onItemTapped,
          elevation: 10,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0XFF526488),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular) ,
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),label: "Home"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular) ,
                activeIcon:Icon(FluentSystemIcons.ic_fluent_ticket_filled) ,label: "Ticket"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled), label: "Search"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular) ,
                activeIcon:Icon(FluentSystemIcons.ic_fluent_person_filled) , label: "Person"),
          ],
        ),
      );
  }
  
}