import 'package:flutter/material.dart';

import 'dropdown.dart';
import 'judgedropdown.dart';

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Text('・'),
        Flexible(
          child: TextField(),
        ),
        judgeDropdown(),
        attackDropdown(),
      ],
    );
  }
}
