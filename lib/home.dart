import 'package:flutter/material.dart';

//import 'package:flutter_universe/detail_page.dart';
import 'data.dart';
import 'constant.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gradientEndColor,
        appBar: AppBar(
          title: Text("EscalaMIF"),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3, 0.7])),
          padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: <Widget>[
                        Image.asset(planets[index].iconImage),
                        Column(
                          children: <Widget>[
                            SizedBox(height: 100),
                            Card(
                              elevation: 8,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(32.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 100),
                                    Text(
                                      planets[index].name,
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 44,
                                        color: const Color(0xff47455f),
                                        fontWeight: FontWeight.w900,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      'Age',
                                      style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 23,
                                        color: primaryTextColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 32),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'Know more',
                                          style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 18,
                                            color: secondaryTextColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: secondaryTextColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
//                        Hero(
//                          tag: planets[index].position,
//                          child: Image.asset(planets[index].iconImage),
//                        ),
//                        Positioned(
//                          right: 24,
//                          bottom: 60,
//                          child: Text(
//                            planets[index].position.toString(),
//                            style: TextStyle(
//                              fontFamily: 'Avenir',
//                              fontSize: 200,
//                              color: primaryTextColor.withOpacity(0.08),
//                              fontWeight: FontWeight.w900,
//                            ),
//                            textAlign: TextAlign.left,
//                          ),
//                        ),
                      ],
                    );
                  },
                ),
              ),

//              Container(
//                alignment: Alignment.bottomRight,
//                height: 120.0,
//                padding: EdgeInsets.only(right: 15),
//                child: Column(
//                  mainAxisSize: MainAxisSize.min,
//                  children: <Widget>[
//                    FloatingActionButton(
//                      tooltip: 'Increment',
//                      onPressed: _incrementCounter,
//                      backgroundColor: Colors.blueAccent,
//                      child: const Icon(Icons.add, size: 36.0),
//                    ),
//                    SizedBox(
//                      height: 16.0,
//                    ),
//                    FloatingActionButton(
//                      tooltip: 'Decrement',
//                      onPressed: _decrementCounter,
//                      backgroundColor: Colors.redAccent,
//                      child: const Icon(Icons.remove, size: 36.0),
//                    ),
//                  ],
//                ),
//              ),
            ],
          ),
        ));
  }
}
