import 'package:flutter/material.dart';
import 'package:pokeka_1/main.dart';

class RecordChart extends StatefulWidget {
  const RecordChart({super.key});

  @override
  State<RecordChart> createState() => _RecordChartState();
}

class _RecordChartState extends State<RecordChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('戦績'),
      ),
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80.0, bottom: 60.0),
                child: Center(
                  child: Text(
                      'の戦績表',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 15.0, left: 10.0),
                      child: Text(
                          'ルギア',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 350,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('100%'),
                              Text('90%'),
                              Text('80%'),
                              Text('70%'),
                              Text('60%'),
                              Text('50%'),
                              Text('40%'),
                              Text('30%'),
                              Text('20%'),
                              Text('10%'),
                            ],
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     for (var i = 0; i < 7; i++) {
                        //     //   Padding(
                        //     //     padding: EdgeInsets.all(4),
                        //     //     child: ChartItem(
                        //     //       ratio: values[i],
                        //     //       date:
                        //     //         DateTime.now().add(Duration((days: index)),
                        //     //         ),
                        //     //     ),
                        //     //   )
                        //     // }
                        //   ],
                        // )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}

class ChartItem extends StatelessWidget {
  const ChartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

