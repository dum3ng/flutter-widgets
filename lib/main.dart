import 'package:flutter/material.dart';
import 'package:widgets/play/paint.dart';
import 'package:widgets/widgets_demo/absorb_pointer.dart';
import 'package:widgets/widgets_demo/align.dart';
import 'package:widgets/widgets_demo/animated_builder.dart';
import 'package:widgets/widgets_demo/animated_container.dart';
import 'package:widgets/widgets_demo/animated_icon.dart';
import 'package:widgets/widgets_demo/animated_list.dart';
import 'package:widgets/widgets_demo/aspect_ratio.dart';
import 'package:widgets/widgets_demo/backdrop_filter.dart';
import 'package:widgets/widgets_demo/custom_paint.dart';
import 'package:widgets/widgets_demo/dismissible.dart';
import 'package:widgets/widgets_demo/draggable.dart';
import 'package:widgets/widgets_demo/expanded.dart';
import 'package:widgets/widgets_demo/fade_in_image.dart';
import 'package:widgets/widgets_demo/fade_transition.dart';
import 'package:widgets/widgets_demo/fitted_box.dart';
import 'package:widgets/widgets_demo/flexible.dart';
import 'package:widgets/widgets_demo/floating_action_button.dart';
import 'package:widgets/widgets_demo/futter_builder.dart';
import 'package:widgets/widgets_demo/inherited_widget.dart';
import 'package:widgets/widgets_demo/layout_builder.dart';
import 'package:widgets/widgets_demo/limited_box.dart';
import 'package:widgets/widgets_demo/media_query.dart';
import 'package:widgets/widgets_demo/opacity.dart';
import 'package:widgets/widgets_demo/page_view.dart';
import 'package:widgets/widgets_demo/positioned.dart';
import 'package:widgets/widgets_demo/safe_area.dart';
import 'package:widgets/widgets_demo/sized_box.dart';
import 'package:widgets/widgets_demo/sliver_app_bar.dart';
import 'package:widgets/widgets_demo/sliver_collection.dart';
import 'package:widgets/widgets_demo/spacer.dart';
import 'package:widgets/widgets_demo/stream_builder.dart';
import 'package:widgets/widgets_demo/table.dart';
import 'package:widgets/widgets_demo/tooltip.dart';
import 'package:widgets/widgets_demo/transform.dart';
import 'package:widgets/widgets_demo/value_listenable_builder.dart';
import 'package:widgets/widgets_demo/wrap.dart';


void main() => runApp(MyApp());

class RoutesData {
  /// 0
  static const SafeArea = '/safe area';

  /// 1
  static const Expanded = '/expanded';

  /// 2
  static const Wrap = '/wrap';

  /// 3
  static const AnimatedContainer = '/animated container';

  /// 4
  static const Opacity = '/opacity';

  /// 5
  static const FutureBuilder = '/future builder';

  /// 6
  static const FadeTransition = '/fade transition';

  /// 7
  static const FloatingActionButton = '/floating action button';

  /// 8
  static const PageView = '/page view';

  /// 9
  static const Table = '/table';

  /// 10
  static const SliverAppBar = '/sliver app bar';

  /// 11
  static const SliverCollection = '/sliver list & sliver grid';

  /// 12
  static const FadeInImage = '/fade in image';

  /// 13
  static const StreamBuilder = '/stream builder';

  /// 19
  static const CustomPaint = '/custom paint';

  /// 20
  static const Tooltip = '/tooltip';

  /// 21
  static const FittedBox = '/fitted box';

  /// 22
  static const LayoutBuilder = '/layout builder';

  /// 23
  static const AbsorbPointer = '/absorb pointer';

  /// 24
  static const Transform = '/transform';

  /// 25
  static const BackdropFilter = '/backdrop filter';

  /// 26
  static const Align = '/align';

  /// 27
  static const Positioned = '/positioned';

  /// 28
  static const AnimatedBuilder = '/animated builder';

  /// 29
  static const Dismissible = '/dismissible';

  /// 30
  static const SizedBox = '/sized box';

  /// 31
  static const ValueListenableBuilder = '/value listenable builder';

  /// 32
  static const Draggable = '/draggable';

  /// 33
  static const AnimatedList = '/animated list';

  /// 34
  static const Flexible = '/flexible';

  /// 35
  static const MediaQuery = '/media query';

  /// 36
  static const Spacer = '/spacer';

  /// 37
  static const InheritedWidget = '/inherited widget';

  /// 38
  static const AnimatedIcon = '/animated icon';

  /// 39
  static const AspectRatio = '/aspect ratio';
  /// 40
  static const LimitedBox = '/limited box';
}

var routesMap = {
  RoutesData.SafeArea: () => WeekSafeArea(),
  RoutesData.Expanded: () => WeekExpanded(),
  RoutesData.Wrap: () => WeekWrap(),
  RoutesData.AnimatedContainer: () => WeekAnimatedContainer(),
  RoutesData.Opacity: () => WeekOpacity(),
  RoutesData.FutureBuilder: () => WeekFutureBuilder(),
  RoutesData.FadeTransition: () => WeekFadeTransition(),
  RoutesData.FloatingActionButton: () => WeekFloatingActionButton(),
  RoutesData.PageView: () => WeekPageView(),
  RoutesData.Table: () => WeekTable(),
  RoutesData.SliverAppBar: () => WeekSliverAppBar(),
  RoutesData.SliverCollection: () => WeekSliverCollection(),
  RoutesData.FadeInImage: () => WeekFadeInImage(),
  RoutesData.StreamBuilder: () => WeekStreamBuilder(),
  RoutesData.CustomPaint: () => WeekCustomPaint(),
  RoutesData.Tooltip: () => WeekTooltip(),
  RoutesData.FittedBox: () => WeekFittedBox(),
  RoutesData.LayoutBuilder: () => WeekLayoutBuilder(),
  RoutesData.AbsorbPointer: () => WeekAbsorbPointer(),
  RoutesData.Transform: () => WeekTransform(),
  RoutesData.BackdropFilter: () => WeekBackdropFilter(),
  RoutesData.Align: () => WeekAlign(),
  RoutesData.Positioned: () => WeekPositioned(),
  RoutesData.AnimatedBuilder: () => WeekAnimatedBuilder(),
  RoutesData.Dismissible: () => WeekDismissible(),
  RoutesData.SizedBox: () => WeekSizedBox(),
  RoutesData.ValueListenableBuilder: () => WeekValueListenableBuilder(),
  RoutesData.Draggable: () => WeekDraggable(),
  RoutesData.AnimatedList: () => WeekAnimatedList(),
  RoutesData.Flexible: () => WeekFlexible(),
  RoutesData.MediaQuery: () => WeekMediaQuery(),
  RoutesData.Spacer: () => WeekSpacer(),
  RoutesData.InheritedWidget: () => WeekInheritedWidget(),
  RoutesData.AnimatedIcon: () => WeekAnimatedIcon(),
  RoutesData.AspectRatio: () => WeekAspectRatio(),
  RoutesData.LimitedBox: () => WeekLimitedBox(),
};

Map<String, Widget Function() > playRoutesMap = {
  'play/paint': () => PaintDemo(),
};

var level1Routes = {
  'widgets': ()=> WidgetsDemoPage(),
  'play': () => PlayPage(),
};


class WidgetsDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(body: weeklyGrid());
      }

  Widget weeklyGrid() {
    return Scaffold(
        body: GridView.builder(
            itemCount: routesMap.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              var key = routesMap.keys.toList().reversed.toList()[index];
              var value = routesMap[key];
              return ListTile(
                  title: Text(key),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return value();
                    }));
                  });
            }));
  }
}

class PlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: level1Routes.length,
      itemBuilder: (context, index) {
        var route = level1Routes.entries.elementAt(index);
        return FlatButton(child: Text(route.key),
        onPressed: () {
          Navigator.of(context).pushNamed(route.key);
        },);
      },
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //   return MapEntry(key, (context) => value());
 // This method is rerun every time setState is called, for instance as done // by the _incrementCounter method above.
       //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // var allMap = Map
    // var routes = routesMap.map((key, value) {
    //   return MapEntry(key, (context) => value());
    // });
    var allRoutesList = [routesMap, playRoutesMap].map( (rs) => rs.map( (key, value) => MapEntry(key, (context)=> value())));
    var allRoutes = allRoutesList.reduce((a,b) => a..addAll(b));
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: "Quicksand",
          primarySwatch: Colors.amber),
      routes: allRoutes,
//      {
//        RoutesData.SafeArea: (context) => WeekSafeArea(),
//      },
      home: ListView(children: <Widget>[
        Padding(padding: EdgeInsets.all(20.0),
        child: FlatButton(child: Text('widgets'),
        onPressed: () {
          Navigator.of(context).pushNamed('widgets');
        },),),

        Padding(padding: EdgeInsets.all(20.0),
        child: FlatButton(child: Text('play'),
        onPressed: () {
          Navigator.of(context).pushNamed('play');
        },),),
      ],),
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

  @override
  Widget build(BuildContext context) { // This method is rerun every time setState is called, for instance as done // by the _incrementCounter method above.
       //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // var allMap = Map
    // var routes = routesMap.map((key, value) {
    //   return MapEntry(key, (context) => value());
    // });
    var allRoutesList = [routesMap, playRoutesMap].map( (rs) => rs.map( (key, value) => MapEntry(key, (context)=> value())));
    var allRoutes = allRoutesList.reduce((a,b) => a..addAll(b));
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: "Quicksand",
          primarySwatch: Colors.amber),
      routes: allRoutes,
//      {
//        RoutesData.SafeArea: (context) => WeekSafeArea(),
//      },
      home: ListView(children: <Widget>[
        Padding(padding: EdgeInsets.all(20.0),
        child: FlatButton(child: Text('widgets'),
        onPressed: () {
          Navigator.of(context).pushNamed('widgets');
        },),),

        Padding(padding: EdgeInsets.all(20.0),
        child: FlatButton(child: Text('play'),
        onPressed: () {
          Navigator.of(context).pushNamed('play');
        },),),
      ],),
    );
  }

  Widget weeklyList(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: routesMap.length,
          itemBuilder: (context, index) {
            var key = routesMap.keys.toList().reversed.toList()[index];
            var value = routesMap[key];
            return ListTile(
                title: Text(key),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return value();
                  }));
                });
          }),
    );
  }

}
