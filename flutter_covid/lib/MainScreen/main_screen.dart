import 'package:flutter/material.dart';
import "../Models/case.dart";
import '../styles.dart';
import 'case_detail.dart';

class CasesList extends StatelessWidget {
  final List<Case> cases;

  CasesList(this.cases);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cases", style: Styles.navBarTitle)),
      body: ListView.builder(
        itemCount: this.cases.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var caso = this.cases[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      title: _itemTitle(caso),
      onTap: () {
        _navigationToCaseDetail(context, caso);
      },
    );
  }

  void _navigationToCaseDetail(BuildContext context, Case caso) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CaseDetail(caso)));
  }

  Widget _itemTitle(Case caso) {
    return Text('${caso.name}', style: Styles.textDefault);
  }
}
