import 'package:flutter/material.dart';

class TemproryPage extends StatefulWidget {
  const TemproryPage({ Key? key }) : super(key: key);

  @override
  _TemproryPageState createState() => _TemproryPageState();
}

class _TemproryPageState extends State<TemproryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/logo.png"),
            ],
          ),
        ),
      ),
    );
  }
}