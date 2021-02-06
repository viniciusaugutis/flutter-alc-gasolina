import 'package:alcoolgasolina/widgets/input.widget.dart';
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
        primarySwatch: Colors.purple,
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
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "CALCULAR NOVAMENTE",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 15,
                          fontFamily: "Big Shoulders Display",
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Input(ctr: _gasCtrl, label: "Gasolina"),
          Input(ctr: _alcCtrl, label: "Álcool"),
          Container(
              margin: EdgeInsets.all(30),
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(60)),
              child: FlatButton(
                child: Text(
                  "CALCULAR",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 25,
                      fontFamily: 'Big Shoulders Display'),
                ),
                onPressed: () {},
              ))
        ]));
  }
}
