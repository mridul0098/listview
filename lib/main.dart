import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "listview",
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "listview",
        ),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> list = List();
  @override
  void initState() {
    for (int i = 1; i <= 50; i++) {
      list.add(i);
    }
  }

  Widget build(BuildContext context) {
    return ListView.builder(
     itemCount: list.length,
     itemBuilder:(BuildContext cnx, int index) {
       return  ListTile(
          title: Text("item no ${list[index]}"),
          leading: Container(
            height: 25,
            width: 25,
            decoration: 
              BoxDecoration(shape:BoxShape.circle,color:Colors.pink),
          ),
          trailing:Icon(Icons.arrow_forward),
        );
     } 
    );
  }
}

/*
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("item 1"),
          leading: Container(
            height: 25,
            width: 25,
            decoration: 
              BoxDecoration(shape:BoxShape.circle,color:Colors.pink),
          ),
          trailing:Icon(Icons.arrow_forward),
        ),
        ListTile(
          leading: Container(
            height: 25,
            width: 25,
            decoration: 
              BoxDecoration(shape:BoxShape.circle,color:Colors.pink),
          ),
          title: Text("item 1"),
          trailing:Icon(Icons.arrow_forward),
          
        ),
        ListTile(
          title: Text("item 1"),
          trailing:Icon(Icons.arrow_forward),
          leading: Container(
            height: 25,
            width: 25,
            decoration: 
              BoxDecoration(shape:BoxShape.circle,color:Colors.pink),
          ),
        ),
      ],
    );
  }
}
*/