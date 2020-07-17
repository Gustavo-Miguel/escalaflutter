import 'package:flutter/material.dart';

class ModalBottomSheetDemo extends StatefulWidget {
  @override
  _ModalBottomSheetDemoState createState() => _ModalBottomSheetDemoState();
}

class _ModalBottomSheetDemoState extends State<ModalBottomSheetDemo> {
  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            child: Text('Hello From Modal Bottom Sheet'),
            padding: EdgeInsets.all(40.0),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return Text("sodakp");
        });
  }
}
