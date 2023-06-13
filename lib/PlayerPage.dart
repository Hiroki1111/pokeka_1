import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pokeka_1/Auth/Login.dart';
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
        actions: [
          IconButton(
            onPressed: () async {
              // ログアウト処理
              // 内部で保持しているログイン情報等が初期化される
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('・リーグ名：'),
            ],
          ),
          Text('プレイヤー名：'),
          Text('ポイント：'),
          Text('ランキング：'),
          Text('使用デッキ：'),
          // MaterialButton(
          //   child: Text('使用デッキ'),
          //   onPressed: (){
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) =>
          //           DeckPage(),
          //       )
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
