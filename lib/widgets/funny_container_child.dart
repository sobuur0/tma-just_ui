import 'package:flutter/material.dart';

class FunnyContainerChild extends StatelessWidget {
  final Widget child;
  const FunnyContainerChild({Key? key, required this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: child,
    );
  }
}
