import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';

class WeekTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'table',
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Table(
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: {
            0: FixedColumnWidth(100.0),
            1: FixedColumnWidth(100.0),
            2: FixedColumnWidth(50.0)
          },
          children: [
            TableRow(children: [
              createCell(
                width: 20,
                height: 20,
              ),
              createCell(width: 40, height: 40, color: Colors.red),
              createCell(width: 65, height: 20, color: Colors.greenAccent),
            ]),
            TableRow(children: [
              createCell(
                width: 125,
                height: 120,
              ),
              createCell(width: 125, height: 40, color: Colors.blue),
              createCell(width: 125, height: 20, color: Colors.greenAccent),
            ]),
            TableRow(children: [
              createCell(
                width: 125,
                height: 20,
              ),
              createCell(width: 125, height: 40, color: Colors.indigo),
              createCell(width: 125, height: 20, color: Colors.greenAccent),
            ])
          ],
        ),
      ),
    );
  }

  Widget createCell(
      {required int width, required int height, Color color = Colors.black26}) {
    return Container(
      width: width.toDouble(),
      height: height.toDouble(),
      color: color,
    );
  }
}
