import 'package:bottom_appbar/constants/size_config.dart';
import 'package:bottom_appbar/constants/styling.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class TableRowReport extends StatelessWidget {
  final String iconCell;
  final num priceValue;
  final num tableSize;

  const TableRowReport(
      {Key key,
      @required this.iconCell,
      @required this.priceValue,
      @required this.tableSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 0.3 * SizeConfig.heightMultiplier,
              ),
            ),
          ),
          height: 8.0 * SizeConfig.heightMultiplier,
          width: 10.0 * SizeConfig.heightMultiplier,
          child: Center(
            child: SvgPicture.asset(
              iconCell,
              width: 6.0 * SizeConfig.heightMultiplier,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 0.3 * SizeConfig.heightMultiplier,
                ),
                left: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 0.3 * SizeConfig.heightMultiplier,
                ),
              ),
            ),
            height: 8.0 * SizeConfig.heightMultiplier,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 2.0 * SizeConfig.heightMultiplier,
                  right: 2.0 * SizeConfig.heightMultiplier,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'R\$ ',
                      style: TextStyle(
                        fontSize: 2.0 * SizeConfig.heightMultiplier,
                        color: AppTheme.subTitleTextColor,
                      ),
                    ),
                    Text(
                      '$priceValue',
                      style: TextStyle(
                        fontSize: 2.0 * SizeConfig.heightMultiplier,
                        color: AppTheme.subTitleTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
