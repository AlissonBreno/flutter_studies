import 'package:bottom_appbar/constants/size_config.dart';
import 'package:bottom_appbar/tabs/homePageTabs/tab1Widgets/data_filter.dart';
import 'package:bottom_appbar/tabs/homePageTabs/tab1Widgets/table.dart';
import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 4.0 * SizeConfig.heightMultiplier,
        bottom: 4.0 * SizeConfig.heightMultiplier,
        left: 2.0 * SizeConfig.heightMultiplier,
        right: 2.0 * SizeConfig.heightMultiplier,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          DataFilter(),
          Padding(
            padding: EdgeInsets.only(
              top: 2.0 * SizeConfig.heightMultiplier,
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

List<Map<String, dynamic>> fakeList = [
  {'avatar': 'assets/icons/mastercard.svg', 'valor': 134.05},
  {'avatar': 'assets/icons/mastercard.svg', 'valor': 124.05},
  {'avatar': 'assets/icons/mastercard.svg', 'valor': 134.05}
];
