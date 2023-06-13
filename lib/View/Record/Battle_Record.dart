import 'package:flutter/material.dart';
import 'package:pokeka_1/View/Record/AddPage.dart';
import 'package:pokeka_1/View/Record/Record.dart';

import '../../Graph.dart';

class BattleRecordPage extends StatefulWidget {
  const BattleRecordPage({super.key});

  @override
  State<BattleRecordPage> createState() => _BattleRecordPageState();
}

class _BattleRecordPageState extends State<BattleRecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('戦績ページ'),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
              '使用デッキ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPage())
            );
          }, icon: Icon(Icons.add_box_rounded)),
          // MaterialButton(
          //   child: Text('戦績データを入力'),
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) =>
          //             AddPage(),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
