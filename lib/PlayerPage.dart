import 'package:flutter/material.dart';
import 'package:pokeka_1/Deck.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プレイヤーページ'),
      ),
      body: Column(
        children: [
          Text('マスターリーグ'),
          Text('プレイヤー名：'),
          Text('ポイント：'),
          Text('ランキング：'),
          MaterialButton(
            child: Text('使用デッキ'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                    DeckPage(),
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
