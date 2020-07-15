import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escala MIF',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Escala MIF'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
//          color: Colors.amber,
          padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your age',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),

//              new NumberPickerDialog.decimal(
//                  minValue: 1,
//                  maxValue: 10,
//                  initialDoubleValue: _currentPrice),

              Container(
                alignment: Alignment.bottomRight,
                height: 500.0,
                padding: EdgeInsets.only(right: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FloatingActionButton(
                      tooltip: 'Increment',
                      onPressed: _incrementCounter,
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
