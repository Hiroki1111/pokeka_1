import 'package:flutter/material.dart';
import 'package:pokeka_1/Battle_Record.dart';
import 'package:pokeka_1/Graph.dart';
import 'package:pokeka_1/PlayerPage.dart';

import 'Home.dart';

class MystatefullWidget extends StatefulWidget {
  const MystatefullWidget({Key? key}) : super(key: key);

  @override
  State<MystatefullWidget> createState() => _MystatefullWidgetState();
}

class _MystatefullWidgetState extends State<MystatefullWidget> {
  static const _screens = [
    HomePage(),
    BattleRecordPage(),
    GraphPage(),
    PlayerPage(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.event_note), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.note_add_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: ""),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}