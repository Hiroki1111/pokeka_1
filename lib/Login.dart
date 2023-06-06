import 'package:flutter/material.dart';

import 'Home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ログインページ'),
      ),
      body: Column(
        children: <Widget>[
          Text('ユーザー名'),
          Text('パスワード'),
          Row(
            children: [
              MaterialButton(
                color: const Color(0xFFE0E0E0),
                child: const Text(
                  '登録する',
                  style: TextStyle(color: Colors.black),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), //角の丸み
                  // side: BorderSide(color: Colors.black), //枠線の設定
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(), // HomePageへ遷移
                    ),
                  );
                },
              ),
              MaterialButton(
                color: const Color(0xFFE0E0E0),
                child: const Text(
                  'ログイン',
                  style: TextStyle(color: Colors.black),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), //角の丸み
                  // side: BorderSide(color: Colors.black), //枠線の設定
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
