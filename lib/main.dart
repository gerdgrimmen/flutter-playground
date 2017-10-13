import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(
    new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new FlutterDemo(),
    ),
  );
}

class FlutterDemo extends StatefulWidget {
  FlutterDemo({Key key}) : super(key: key);

  @override
  _FlutterDemoState createState() => new _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _readCounter().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _getLocalFile() async {
    // get the path to the document directory.
    String dir = (await getApplicationDocumentsDirectory()).path;
    return new File('$dir/counter.txt');
  }

  Future<int> _readCounter() async {
    try {
      File file = await _getLocalFile();
      // read the variable as a string from the file.
      String contents = await file.readAsString();
      return int.parse(contents);
    } on FileSystemException {
      return 0;
    }
  }

  Future<Null> _incrementCounter() async {
    setState(() {
      _counter++;
    });
    // write the variable as a string to the file
    await (await _getLocalFile()).writeAsString('$_counter');
  }
  Future<Null> _decrementCounter(int asd) async {
    setState(() {
      _counter -= asd;
    });
    // write the variable as a string to the file
    await (await _getLocalFile()).writeAsString('$_counter');
  }
List<BottomNavigationBarItem> bla = [
  new BottomNavigationBarItem(
    title: new Title(
    title: 'title 1',
    color: new Color(0xFFFFFF00),
    child: new Text("asdasdasd"),
  ),
    icon: new Icon(Icons.delete),
),
new BottomNavigationBarItem(
    title: new Title(
      title: 'title 2',
      color: new Color(0xFF00FF00),
      child: new Text("dsadsadsa"),
    
  ),
    icon: new Icon(Icons.delete),
),
new BottomNavigationBarItem(
    title: new Title(
      title: 'title 3',
      color: new Color(0xFFFFFF00),
      child: new Text("sdasdasda"),
    
  ),
    icon: new Icon(Icons.delete),
),
];



  @override
  Widget build(BuildContext context) => new Scaffold(
      appBar: new AppBar(title: new Text('Flutter Demo')),
      body: new Center(
        child: new Text('Button tapped $_counter time${
          _counter == 1 ? '' : 's'
        }.'),

        ),
        backgroundColor: new Color(0xFFF00FFF),
        bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: bla,
          onTap: _decrementCounter,
        ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
      
    );
}

