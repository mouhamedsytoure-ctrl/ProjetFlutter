import 'package:flutter/material.dart';


class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Page 1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28
            ),
          ),
        ),
        color:  Colors.orange[100],
      ),
    );
  }
}
