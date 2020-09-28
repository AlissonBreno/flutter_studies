import 'package:bottom_appbar/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 4.0 * SizeConfig.heightMultiplier,
          bottom: 4.0 * SizeConfig.heightMultiplier,
          left: 4.0 * SizeConfig.heightMultiplier,
          right: 4.0 * SizeConfig.heightMultiplier,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircularPercentIndicator(
                  progressColor: Theme.of(context).primaryColor,
                  percent: 0.33,
                  animation: true,
                  radius: 18.0 * SizeConfig.heightMultiplier,
                  lineWidth: 1.5 * SizeConfig.heightMultiplier,
                  backgroundColor: Color(0xFFE0EAF0),
                  circularStrokeCap: CircularStrokeCap.butt,
                  center: Text(
                    '1 de 3',
                    style: TextStyle(
                      fontSize: 3.0 * SizeConfig.heightMultiplier,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Pessoais',
                      style: TextStyle(
                        fontSize: 4.2 * SizeConfig.heightMultiplier,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      'Próximo: Endereço',
                      style: TextStyle(
                        fontSize: 1.5 * SizeConfig.heightMultiplier,
                        color: Color(0xFFA0ACB2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
