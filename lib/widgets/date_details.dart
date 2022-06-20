import 'package:flutter/material.dart';
import 'package:tma_just_ui/constants/colors.dart';

class DateDetails extends StatelessWidget {
  final String dayOfTheWeek;
  final String date;
  final Color color;
  final VoidCallback onTap;
  final double leftPadding;
  final Color dotColor;
  const DateDetails({
    Key? key,
    required this.dayOfTheWeek,
    required this.date,
    required this.color,
    required this.onTap,
    this.leftPadding = 14.0,
    this.dotColor = kLightPinkColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(leftPadding, 14.0, 14.0, 10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Text(
              dayOfTheWeek,
              style: const TextStyle(
                color: kDayOfTheWeekColor,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 5.0)),
            Text(
              date,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 3.0)),
            Icon(
              Icons.fiber_manual_record,
              size: 8.0,
              color: dotColor,
            )
          ],
        ),
      ),
    );
  }
}
