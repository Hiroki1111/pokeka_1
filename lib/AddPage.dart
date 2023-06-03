import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('戦績入力ページ'),
      ),
      body: Column(
        children: <Widget>[
          Text('使用デッキ：'),
          TextField(),
          Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),
          Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),Row(
            children: [
              Text('相手のデッキ'),
              SizedBox(width: 10),
              Text('先行or後攻'),
              SizedBox(width: 10),
              Text('⭕️or❌'),
            ],
          ),
          MaterialButton(
            child: Text('登録'),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
