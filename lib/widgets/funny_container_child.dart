import 'package:flutter/material.dart';
import 'package:tma_just_ui/constants/colors.dart';

class FunnyContainerChild extends StatelessWidget {
  final Widget child;
  final double padding;
  final Color mainColor;
  final Color outerColor;
  const FunnyContainerChild({
    Key? key,
    required this.child,
    this.padding = 8.0,
    this.mainColor = const Color(0xFFDCD1CE),
    this.outerColor = kDayOfTheWeekColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: ShapeDecoration(
        color: mainColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: outerColor,
            width: 1.0,
          ),
        ),
      ),
      child: child,
    );
  }
}
