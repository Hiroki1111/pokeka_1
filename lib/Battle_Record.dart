import 'package:flutter/material.dart';
import 'package:pokeka_1/AddPage.dart';
import 'package:pokeka_1/Record.dart';

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
        children: [
          MaterialButton(
            child: Text('戦績データを表示'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecordPage(),
                ),
              );
            },
          ),
          MaterialButton(
            child: Text('戦績データを入力'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      AddPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
