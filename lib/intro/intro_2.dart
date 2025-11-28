import 'package:flutter/material.dart';


class Intro2 extends StatelessWidget {
  const Intro2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Page 2",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28
            ),
          ),
        ),
        color:  Colors.green[100],
      ),
    );
  }
}
