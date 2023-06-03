import 'package:flutter/material.dart';
import 'package:pokeka_1/Graph.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('戦績ページ'),
      ),
      body: Column(
        children: <Widget>[
          Text('使用デッキ'),
          MaterialButton(
            child: Text('ルギア'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      GraphPage()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
