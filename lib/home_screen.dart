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
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children:[
          // mes different slides
          PageView(
            onPageChanged:(index){
              setState(() {
                onLastPage = (index==2);
              });
            }
            ,
            controller: _controller,
            children: [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
          ),

          //mes indicateurs
          Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //text passé
                InkWell(
                    child: Text("Passer"),
                  onTap:(){
                     _controller.jumpToPage(2);
                  },
                ),

                //Les indicateurs
                SmoothPageIndicator(
                    controller: _controller,
                    count: 3
                ),

                //Text suivant
                onLastPage ?
                GestureDetector(
                  child: Text("Terminer"),
                  onTap:(){

                  },
                ):
                GestureDetector(
                  child: Text("Suivant"),
                  onTap:(){
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500) ,
                        curve: Curves.easeIn
                    );
                  },
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}
