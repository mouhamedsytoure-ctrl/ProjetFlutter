import 'package:flutter/material.dart';
import 'package:myproject/intro/intro_1.dart';
import 'package:myproject/intro/intro_2.dart';
import 'package:myproject/intro/intro_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller= PageController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[
          // mes diferents slides
          PageView(
            controller: _controller,
            children: [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
          ),

          //mes indicateurs
          Container(
            alignment: Alignment(0, 0),
            child: SmoothPageIndicator(
                controller: _controller,
                count: 3
            ),
          )
        ]
      ),
    );
  }
}
