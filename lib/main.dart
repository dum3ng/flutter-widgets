import 'package:flutter/material.dart';
import 'package:widgets/animated_container.dart';
import 'package:widgets/expanded.dart';
import 'package:widgets/opacity.dart';
import 'package:widgets/safe_area.dart';
import 'package:widgets/wrap.dart';

void main() => runApp(MyApp());

class RoutesData {
  static  const SafeArea = '/safe area';
  static const Expanded = '/expanded';
  static const Wrap = '/wrap';
  static const AnimatedContainer = '/animated container';
  static const Opacity = '/opacity';
}

var routesMap = {
  RoutesData.SafeArea: () => WeekSafeArea(),
  RoutesData.Expanded: () => WeekExpanded(),
  RoutesData.Wrap: () => WeekWrap(),
  RoutesData.AnimatedContainer: () => WeekAnimatedContainer(),
  RoutesData.Opacity: () => WeekOpacity(),

};

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var routes = routesMap.map((key, value) {
      return MapEntry(key, (context) => value());
    });
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: "Quicksand",
          primarySwatch: Colors.amber),
      routes: routes,
//      {
//        RoutesData.SafeArea: (context) => WeekSafeArea(),
//      },
      home: weeklyList(context),
    );
  }

  Widget weeklyList(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: routesMap.length,
          itemBuilder: (context, index) {
            var key = routesMap.keys.toList()[index];
            var value = routesMap[key];
            return ListTile(title: Text(key),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return value();
                  }));
                });
          }),
    );
  }
}
