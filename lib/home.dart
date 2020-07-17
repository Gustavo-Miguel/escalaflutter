import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_universe/detail_page.dart';
import 'data.dart';
import 'constant.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'modal.dart';

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

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return Text("sodakp");
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
                height: MediaQuery.of(context).size.height * 0.65,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                            Image.asset(planets[index].iconImage),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FloatingActionButton(
                      tooltip: 'Increment',
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            // retorna um objeto do tipo Dialog
                            return SimpleDialog(
                              title: new Text("Adicionar novo paciente."),
                              backgroundColor: Colors.blue,
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              contentPadding: new EdgeInsets.only(top: 4,bottom: 25,left: 6,right: 6),
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
//                                    borderRadius: BorderRadius.circular(4.0) ,

                                  ),
                                  padding: EdgeInsets.only(right: 15),
                                  height: MediaQuery.of(context).size.height * 0.40,
                                  child: Column(
                                    children: <Widget>[
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          icon: Icon(Icons.person),
                                          hintText: 'What do people call you?',
                                          labelText: 'Name *',
                                        ),
                                        onSaved: (String value) {
                                          // This optional block of code can be used to run
                                          // code when the user saves the form.
                                        },
                                        validator: (String value) {
                                          return value.contains('@')
                                              ? 'Do not use the @ char.'
                                              : null;
                                        },
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      },
                      backgroundColor: Colors.blueAccent,
                      child: const Icon(Icons.add, size: 36.0),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    FloatingActionButton(
                      tooltip: 'Decrement',
                      onPressed: _decrementCounter,
                      backgroundColor: Colors.redAccent,
                      child: const Icon(Icons.remove, size: 36.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
