import 'package:flutter/material.dart';

class Day50 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: WeWidget(),
    );
  }
}

class WeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeWidgetState();
  }
}

class WeWidgetState extends State<WeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day50"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Table(
        textDirection: TextDirection.ltr,
        textBaseline: TextBaseline.alphabetic,
        defaultColumnWidth: FixedColumnWidth(80.0),
        defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
        border:
            TableBorder.all(color: Colors.blueGrey, style: BorderStyle.solid),
        columnWidths: {
          0: FixedColumnWidth(50.0),
          1: FixedColumnWidth(100.0),
          2: FixedColumnWidth(100.0),
        },
        children: <TableRow>[
          TableRow(children: [
            Text("序号"),
            Text("名字"),
            Text("成绩"),
          ]),
          TableRow(children: [
            Text("1"),
            Text("张三"),
            Text("80"),
          ]),
          TableRow(children: [
            Text("2"),
            Text("李四"),
            Text("88"),
          ]),
          TableRow(children: [
            Text("3"),
            Text("王五"),
            Text("92"),
          ])
        ]);
  }
}
