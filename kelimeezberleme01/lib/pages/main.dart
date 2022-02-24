import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

enum Lang { eng, tr }

class _MainPageState extends State<MainPage> {
  Lang? _chooseLang = Lang.eng;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Icon(
                    Icons.drag_handle,
                    color: Colors.black,
                    size: 32,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset("assets/images/logo_text.png"),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
              ],
            )),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                langRadioButton(titleWidget: Text("Türkçe"),value: Lang.tr,group: _chooseLang),
                langRadioButton(titleWidget: Text("İngilizce"),value: Lang.eng,group: _chooseLang),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox langRadioButton(
      {@required Widget ?titleWidget,
      @required Lang ?value,
      @required Lang ?group}) {
    return SizedBox(
      width: 150,
      child: ListTile(
        title: titleWidget,
        leading: Radio<Lang>(
          value: Lang.tr,
          groupValue: _chooseLang,
          onChanged: (Lang? value) {
            setState(() {
              _chooseLang = value;
            });
          },
        ),
      ),
    );
  }
}
