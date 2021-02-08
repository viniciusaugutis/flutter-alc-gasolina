import 'package:alcoolgasolina/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({@required this.result, @required this.reset});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Text(
              result,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontFamily: 'Big Shoulders Display'),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            LoadingButton(
                busy: false,
                func: reset,
                invert: true,
                text: "CALCULAR NOVAMENTE")
          ],
        ));
  }
}
