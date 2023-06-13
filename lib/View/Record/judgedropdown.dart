import 'package:flutter/material.dart';

class judgeDropdown extends StatefulWidget {
  const judgeDropdown({super.key});

  @override
  _judgeDropdownState createState() => _judgeDropdownState();
}

class _judgeDropdownState extends State<judgeDropdown> {
  String isSelectedValue = '⭕️';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        items: [
          DropdownMenuItem(
            value: '⭕️',
            child: Text('⭕️'),
          ),
          DropdownMenuItem(
            value: '❌',
            child: Text('❌'),
          ),
        ],
        value: isSelectedValue,
        onChanged: (String? value) {
          setState(() {
            isSelectedValue = value!;
          });
        }
    );
  }
}