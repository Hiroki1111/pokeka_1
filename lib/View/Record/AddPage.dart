import 'package:flutter/material.dart';
import 'list.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  final _deckName = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('戦績入力ページ'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 30,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: '大会名',
                border: InputBorder.none
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text('使用デッキ：'),
              Flexible(
                child: TextField(
                ),
              ),
            ],
          ),
          list(),
          list(),
        ],
      ),
    );
  }
}
