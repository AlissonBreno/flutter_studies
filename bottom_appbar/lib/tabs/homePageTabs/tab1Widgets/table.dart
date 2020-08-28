import 'package:bottom_appbar/tabs/homePageTabs/tab1Widgets/table_row.dart';
import 'package:flutter/material.dart';

class ReportTable extends StatelessWidget {

  final title;
  final rowList; 

  const ReportTable({
    Key key, 
    @required this.title,
    @required this.rowList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[

        //Table Header
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(15.0),
            ),
            color: Colors.deepPurple,
          ),
          height: 50.0,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[50],
              ),
            ),
          ),
        ),

        //Table Body
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurple, width: 2.0,),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0), 
              bottomRight: Radius.circular(15.0),
            )
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: rowList.length,
            itemBuilder: (context, index) {
              return TableRowReport(
                tableSize: rowList.length,
                iconCell: rowList[index]['avatar'],
                priceValue: rowList[index]['valor'],
              );
            },
          ),
          ),
      ]),
    );
  }
}