import 'package:flutter/material.dart';
import 'package:pokeka/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                          HomePage(), // AddPageへ遷移
                    ),
                  );
                },
              ),
              MaterialButton(
                color: const Color(0xFFE0E0E0),
                child: const Text(
                  'ログアウトする',
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

