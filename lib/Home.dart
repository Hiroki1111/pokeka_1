import 'package:flutter/material.dart';
import 'package:pokeka_1/PlayerPage.dart';
import 'Battle_Record.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
      ),
      body: Column(
        children: [
          MaterialButton(
            child: Text('プレイヤーページ'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) =>
                    PlayerPage(),
                ),
              );
            },
          ),
          MaterialButton(
            child: Text('戦績ページ'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      BattleRecordPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
