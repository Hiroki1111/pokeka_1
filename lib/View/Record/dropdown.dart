import 'package:flutter/material.dart';

class attackDropdown extends StatefulWidget {
  const attackDropdown({super.key});

  @override
  State<attackDropdown> createState() => _attackDropdownState();
}

class _attackDropdownState extends State<attackDropdown> {
  String isSelectedValue = '先攻';

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        items: [
          DropdownMenuItem(
            value: '先攻',
            child: Text('先攻'),
          ),
          DropdownMenuItem(
            value: '後攻',
              child: Text('後攻'),
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