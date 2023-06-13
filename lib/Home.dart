import 'package:flutter/material.dart';
import 'package:pokeka_1/Schedule.dart';

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
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  SchedulePage(),
                    )
                  );
                },
                icon: const Icon(Icons.add_box_rounded),
                iconSize: 50
              ),
            ],
          ),
        ],
      ),
    );
  }
}