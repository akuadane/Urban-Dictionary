import "package:flutter/material.dart";

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.orange[300],
        textTheme: TextTheme(
            headline1: TextStyle(
          fontSize: 23,
          color: Colors.grey[600],
        )),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String word = "Test";
  var definitionList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200],
                      offset: Offset(0, 3),
                      blurRadius: 2,
                      spreadRadius: 3,
                    ),
                  ],
                ),
                child: TextField(
                  textInputAction: TextInputAction.search,
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1,
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: true,
                child: ListView(
                  children: definitionList,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}

class DefTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[Text("Make"), Icon(Icons.sou)],
          ),
        ],
      ),
    );
  }
}
