import 'package:bottom_appbar/tabs/homePageTabs/tab1Widgets/table.dart';
import 'package:bottom_appbar/tabs/homePageTabs/tab1Widgets/table_row.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30.0,
        bottom: 10.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              bottom: 15.0,
            ),
            child: ReportTable(
              title: 'Débito',
              rowList: fakeList,
            ),
          ),
        ],
      ),
    );
  }
}

List <Map<String, dynamic>> fakeList = [
  {'avatar': 'assets/icons/mastercard.svg', 'valor': 134.00}, 
  {'avatar': 'assets/icons/mastercard.svg', 'valor': 124.00},
  {'avatar': 'assets/icons/mastercard.svg', 'valor': 134.00}
];