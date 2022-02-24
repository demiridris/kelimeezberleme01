
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.2,
                child: Icon(Icons.drag_handle,color: Colors.black,size: 32,),
              ),
                Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: Image.asset("assets/images/logo_text.png"),
              ),
                Container(
                width: MediaQuery.of(context).size.width*0.2,
               
              ),
            ],
          )
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Text("Ana Sayfa"),
        ),
      ),
      
    );
  }
}