import 'package:flutter/material.dart';
import 'package:pokeka_1/Graph_display.dart';


class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('戦績グラフ'),
      ),
      body: Column(
        children: [
          MaterialButton(
            child: Text('白ルギア'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecordChart(),
                ),
              );
            },
          ),
          MaterialButton(
            child: Text('一撃ルギア'),
            onPressed: () {
              // Navigator.push(
              //   context,
                // MaterialPageRoute(
                //   builder: (context) =>
                // ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
