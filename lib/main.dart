import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uth_ja/clock_view.dart';
import 'package:uth_ja/sleep_scheduler_botton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'uth-ja',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();
    var formattedTime = DateFormat('HH:mm').format(dateTime);
    var formattedDate = DateFormat('EEE, d MMM').format(dateTime);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        alignment: Alignment.center,
        color: Color(0xFF2D2F41),
        child: Column(
          children: [
            SizedBox(height: 16),
            Text(formattedTime,
                style: TextStyle(color: Colors.white, fontSize: 65)),
            Text(formattedDate,
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: 42,
            ),
            ClockView(),
            SizedBox(
              height: 42,
            ),
            SleepSchedulerButton(),
          ],
        ),
      ),
    );
  }
}
