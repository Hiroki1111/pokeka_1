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
        title: Text('出場予定イベント'),
      ),
      body: ListView(
        children: [
          Card(
            child: Row(
              children: [
                Text(
                  '8月9日'
                ),
                SizedBox(width: 20),
                Text(
                    'Metagames'
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Text(
                    '8月9日'
                ),
                SizedBox(width: 20),
                Text(
                    'Metagames'
                ),
                SizedBox(width: 20),
              ],
            ),
          ),Card(
            child: Row(
              children: [
                Text(
                    '8月9日'
                ),
                SizedBox(width: 20),
                Text(
                    'Metagames'
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.add_box),
            iconSize: 50),
        ],
      ),
    );
  }
}