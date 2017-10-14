import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  void _nothingToSeeHere() {
    setState(() {
      //_counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Image.network(  
            'https://i.ytimg.com/vi/WFlrSZcWwIk/maxresdefault.jpg',
            repeat: ImageRepeat.noRepeat, // repeat does not seem to work
            scale: 3.0, // scale does not seem to work
            ),
        new Row(
          children: <Widget>[
            new Expanded(
              child:
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text("First Text",
                  style: Theme.of(context).primaryTextTheme.title,
                  textAlign: TextAlign.left,
                  ),
                new Text("Second Text",
                  style: Theme.of(context).primaryTextTheme.title,
                  ),
              ],
            ),
            ),
            new Icon(Icons.star,
              color: new Color(0xFFFF0000),
              ),
            new Text("Counter",
              style: Theme.of(context).primaryTextTheme.title,
              ),
          ],
        ),
        new Row(
          children: <Widget>[
            new Expanded(child:
            new Column(
              children: <Widget>[
                new Icon(Icons.phone,
                  color: new Color(0xFF0000FF),
                  ),
                new Text("Tile 1",
                  style: Theme.of(context).primaryTextTheme.title,
                  ),
              ],
            ),
            ),
            new Expanded(child:
            new Column(
              children: <Widget>[
                new Icon(Icons.router,
                  color: new Color(0xFF0000FF),
                  ),
                new Text("Tile 2",
                  style: Theme.of(context).primaryTextTheme.title,
                  ),
              ],
            ),
            ),
            new Expanded(child:
            new Column(
              children: <Widget>[
                new Icon(Icons.share,
                  color: new Color(0xFF0000FF),
                  ),
                new Text("Tile 3",
                  style: Theme.of(context).primaryTextTheme.title,
                  ),
              ],
            ),
            ),
          ],
        ),
        new Text("""Lorem ipsum dolor sit amet, consetetur sadipscing elitr, 
        sed diam nonumy eirmod tempor invidunt ut labore et dolore magna 
        aliquyam erat, sed diam voluptua. At vero eos et accusam et justo 
        duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata 
        sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, 
        consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt 
        ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero 
        eos et accusam et justo duo dolores et ea rebum. Stet clita kasd 
        gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.""",
        style: new TextStyle(color: new Color(0xFFF0F0F0), fontFamily: 'arial',fontSize: 12.0, decoration: new TextDecoration.combine(0x0)),
        ),
      ],
      
    );
  }
}
