import 'package:demo/databasehelper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Datapage(),
    );
  }
}

class Datapage extends StatefulWidget {
  @override
  _DatapageState createState() => _DatapageState();
}

class _DatapageState extends State<Datapage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                color: Colors.red,
                child: Text(
                  'insert',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () async {
                  int i = await DatabaseHelper.instance
                      .insert({DatabaseHelper.columnName: 'Hassan'});
                  print('is is $i');
                },
              ),
              FlatButton(
                color: Colors.green,
                child: Text('query'),
                onPressed: () {},
              ),
              FlatButton(
                color: Colors.blueAccent,
                child: Text('update'),
                onPressed: () {},
              ),
              FlatButton(
                color: Colors.brown,
                child: Text('delete'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
