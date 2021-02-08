import 'package:alcoolgasolina/widgets/input.widget.dart';
import 'package:alcoolgasolina/widgets/loading-button.widget.dart';
import 'package:alcoolgasolina/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(children: <Widget>[
          Logo(),
          Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    "Compensa utilizar álcool",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 30,
                        fontFamily: 'Big Shoulders Display'),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  LoadingButton(
                      busy: false,
                      func: () {},
                      invert: true,
                      text: "CALCULAR NOVAMENTE")
                ],
              )),
          Input(ctr: _gasCtrl, label: "Gasolina"),
          Input(ctr: _alcCtrl, label: "Álcool"),
          LoadingButton(
              busy: true, func: () {}, invert: false, text: "CALCULAR")
        ]));
  }
}
