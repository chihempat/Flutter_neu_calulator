import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  Display({Key key, this.value, this.height}) : super(key: key);

  final String value;
  final double height;

  String get _output => value.toString();
  double get _margin => (height / 30);

  final LinearGradient _gradient =
      const LinearGradient(colors: [Colors.black26, Colors.black45]);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.display2.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w200,
        );

    return Container(
        //padding: EdgeInsets.only(top: _margin, bottom: _margin),
        constraints: BoxConstraints.expand(height: height),
        child: Container(
            padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
            constraints: BoxConstraints.expand(height: height - (_margin)),
            decoration: BoxDecoration(
              color: Color.fromARGB(0, 0, 0, 0),
            ),
            child: Text(
              _output,
              style: style,
              textAlign: TextAlign.right,
            )));
  }
}
