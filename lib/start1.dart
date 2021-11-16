import 'loginscreen.dart';
import "package:flutter/material.dart";
import 'dart:async';
import 'start2.dart';

class start1 extends StatefulWidget {
  start1({Key? key}) : super(key: key);

  @override
  _start1State createState() => _start1State();
}

class _start1State extends State<start1> {
  bool k = true;
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    k
        ? Navigator.push(
            context, MaterialPageRoute(builder: (context) => start2()))
        : print("hello");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      k = false;
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  },
                  child: Container(
                      margin: EdgeInsets.all(40),
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      )),
                )
              ],
            ),
            SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Solve your mathematical", style: TextStyle(fontSize: 25))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("problems in seconds", style: TextStyle(fontSize: 25))
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Lorem ipsum dolor sit amet,conetetur sadipscing elitr \n sed diam nonumy eirmod tempor invidunt ut laboure et \n dolore magna aliquyam erat ,sed diam voluptua, at vero",
                    style: TextStyle(fontSize: 12, color: Colors.grey))
              ],
            ),
            SizedBox(height: 50),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(120),
                            topRight: Radius.circular(120))),
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(top: 5),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(130),
                                      topRight: Radius.circular(130))),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.white24,
                                          shape: BoxShape.circle),
                                    )
                                  ],
                                ),
                              )),
                        )
                      ],
                    )))
          ],
        )));
  }
}
