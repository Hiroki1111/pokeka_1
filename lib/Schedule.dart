import 'package:flutter/material.dart';
import 'package:pokeka_1/Home.dart';
import 'package:pokeka_1/main.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('予定追加ページ'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text('• 日　付：'),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ]
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text('• 大会名：'),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text('• メ　モ：'),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomePage()
                ),
              );
            },
            icon: Icon(Icons.post_add), //アイコン
            label: Text('追加する'), //テキスト
          ),
        ],
      ),
    );
  }
}
