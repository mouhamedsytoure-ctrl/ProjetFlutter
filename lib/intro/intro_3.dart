import 'package:flutter/material.dart';


class Intro3 extends StatelessWidget {
  const Intro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Page 3",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28
            ),
          ),
        ),
        color:  Colors.yellow[100],
      ),
    );
  }
}
