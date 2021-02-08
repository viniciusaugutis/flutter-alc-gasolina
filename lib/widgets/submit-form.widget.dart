import 'package:alcoolgasolina/widgets/input.widget.dart';
import 'package:alcoolgasolina/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm(
      {@required this.gasCtrl,
      @required this.alcCtrl,
      @required this.busy,
      @required this.submitFunc});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(ctr: gasCtrl, label: "Gasolina")),
      Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(ctr: alcCtrl, label: "Álcool")),
      SizedBox(height: 25),
      LoadingButton(
          busy: busy, func: submitFunc, invert: false, text: "CALCULAR")
    ]);
  }
}
