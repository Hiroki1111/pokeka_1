import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pokeka_1/Home.dart';

import 'Model/schedule_model.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {

  final _tournamentName = TextEditingController();
  final _memo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('予定追加ページ'),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text('・大会名：'),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: _tournamentName,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ]
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
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
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text('• メ　モ：'),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: _memo,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 30)),
          ElevatedButton.icon(
            onPressed: () {
              // final tournamentName = _tournamentName.text;
              // final memo = _memo.text;
              // final schedule = Schedule(tournamentName: tournamentName, memo: memo);

              final schedule = <String, dynamic>{
                'tournamentName': _tournamentName.text,
                'memo': _memo.text,
              };

              FirebaseFirestore.instance.collection('schedule').add(schedule);
              Navigator.pop(
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
