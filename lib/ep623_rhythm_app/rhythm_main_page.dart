
import 'package:flutter/material.dart';

class RhythmMainPage extends StatefulWidget {
  @override
  _RhythmMainPageState createState() => _RhythmMainPageState();
}

class _RhythmMainPageState extends State<RhythmMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              )),
        ],
      ),
    );
  }
}
