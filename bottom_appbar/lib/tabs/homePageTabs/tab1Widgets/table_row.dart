import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class TableRowReport extends StatelessWidget {
  final String iconCell;
  final num priceValue;
  final num tableSize;

  const TableRowReport({
    Key key,
    @required this.iconCell,
    @required this.priceValue, 
    @required this.tableSize
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Theme.of(context).primaryColor, width: 2.0,),
            ),
          ),
          height: 60.0,
          width: 100.0,
          child: Center(
            child: SvgPicture.asset(
              iconCell,
              height: 30.0,
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Theme.of(context).primaryColor, width: 2.0,),
                left: BorderSide(color: Theme.of(context).primaryColor, width: 2.0,),
              ),
            ),
            height: 60.0,
            child: Center(
              child: Text(
                'R\$ $priceValue',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
