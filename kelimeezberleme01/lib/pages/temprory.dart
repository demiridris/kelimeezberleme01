import 'package:flutter/material.dart';
import 'package:kelimeezberleme01/pages/main.dart';

class TemproryPage extends StatefulWidget {
  const TemproryPage({Key? key}) : super(key: key);

  @override
  _TemproryPageState createState() => _TemproryPageState();
}

class _TemproryPageState extends State<TemproryPage> {
  @override
  void initState() {
    
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Padding(padding: EdgeInsets.all(15)),
                    Text(
                      "Queazy",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "luck",
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.all(15)),
                Text(
                  "İstedigini Öğren",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "carter",
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
