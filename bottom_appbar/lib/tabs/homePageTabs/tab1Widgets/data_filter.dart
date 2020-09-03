import 'package:flutter/material.dart';



class DataFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      textColor: Colors.deepPurple,
      borderSide: BorderSide(
        color: Colors.deepPurple,
        width: 2.0
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top:8.0,
          bottom: 8.0
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.date_range,
              size: 40.0,
            ),
            Text(
              '11 Juho, 2020 - 17 Julho, 2020',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w300
              ),
            ),
            Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
      //TODO make Date Range pick work
      //https://pub.dev/packages/syncfusion_flutter_datepicker
      onPressed: () {
        
      },
    );
  }
}