import 'dart:html';

import 'package:flutter/material.dart';
import "../Models/case.dart";
import '../styles.dart';

class CaseDetail extends StatelessWidget {
  final Case caso;

  CaseDetail(this.caso);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(caso.name, style: Styles.navBarTitle)),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Container(child: Text(caso.birthdate))]));
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
        child:
            Text(text, textAlign: TextAlign.left, style: Styles.headerLarge));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
        child: Text(text, style: Styles.textDefault));
  }
}
