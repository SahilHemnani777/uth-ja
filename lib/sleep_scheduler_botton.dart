import 'package:flutter/material.dart';

class SleepSchedulerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Container(
          height: 30,
          width: 180,
          decoration: BoxDecoration(
            color: Color(0xFF444974),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Center(
              child: Text(
            'Schedule Sleep',
            style: TextStyle(color: Colors.white,
            fontSize: 24),
          )),
        ),
      ),
    );
  }
}
