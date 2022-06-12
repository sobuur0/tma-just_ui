import 'package:flutter/material.dart';
import 'package:tma_just_ui/constants/colors.dart';

class DateDetails extends StatelessWidget {
  final String dayOfTheWeek;
  final String date;
  final Color color;
  const DateDetails({
    Key? key,
    required this.dayOfTheWeek,
    required this.date,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 4.0),
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
                fontWeight: FontWeight.w500),
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
          const Icon(
            Icons.fiber_manual_record,
            size: 15.0,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
