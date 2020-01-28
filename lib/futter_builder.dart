import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widgets/common_container.dart';

class WeekFutureBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: buildChild(),
      title: 'future builder',
    );
  }

  Widget buildChild() {
    const initialData = [
      {'name': '鲁迅', 'biography': '鲁迅，原名周树人。'},
    ];
    return FutureBuilder(
        future: resolveData(),
        initialData: initialData,
        builder: (ctx, snapshot) {
          var footer;
          print(snapshot.connectionState);
          if (snapshot.connectionState != ConnectionState.done) {
            footer =  CircularProgressIndicator();
          }
          return Container(
            height: MediaQuery.of(ctx).size.height,
            child: Column(
              children: <Widget>[
                NewWidget(data: snapshot.data),
                if (footer != null) footer
              ],
            ),
          );
        });
  }
}

class NewWidget extends StatelessWidget {
  var data;

  NewWidget({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
        itemBuilder: (context, index) {
          Map<String, String> item = data[index];
          return Card(
              child: Center(
                  child: Column(
            children: <Widget>[
              Text(
                item['name'],
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              Text(
                item['biography'],
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              )
            ],
          )));
        },
        itemCount: data.length,
      ),
    );
  }
}

Future resolveData() {
  return Future.delayed(
      Duration(seconds: 2),
      () => [
            {'name': '鲁迅', 'biography': '鲁迅，原名周树人。'},
            {'name': '叶圣陶', 'biography': '叶圣陶, 散文家，教育家.'},
            {'name': '毛泽东', 'biography': '军事家，思想家，诗人'}
          ]);
}
