import 'package:flutter/material.dart';
import 'dart:async';
import 'package:date_range_picker/date_range_picker.dart' as DateRagePicker;
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class DataFilter extends StatefulWidget {
  @override
  _DataFilterState createState() => _DataFilterState();
}

class _DataFilterState extends State<DataFilter> {
  DateTime _startDate = DateTime.now();
  DateTime _endDate = DateTime.now().add(Duration(days: 7));

  Future displayDateRangePicker(BuildContext context) async {
    final List<DateTime> picked = await DateRagePicker.showDatePicker(
      context: context, 
      initialFirstDate: _startDate, 
      initialLastDate: _endDate,
      firstDate: new DateTime(DateTime.now().year - 50), 
      lastDate: new DateTime(DateTime.now().year + 50), 
      // locale: Locale("pt", "Br"),
    );
    if(picked != null && picked.length == 2){
      setState(() {
        _startDate = picked[0];
        _endDate = picked[1];
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    initializeDateFormatting('pt_BR', null);
    var dateFormatter = new DateFormat('dd MMM, yyyy', 'pt_BR');
    String startDate = dateFormatter.format(_startDate);
    String endDate = dateFormatter.format(_endDate);



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
              '$startDate - $endDate',
              // '11 Junho, 2020 - 17 Julho, 2020',
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
      onPressed: () async {
        await displayDateRangePicker(context);
      },
    );
  }
}