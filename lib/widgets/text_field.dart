import 'package:flutter/material.dart';
import 'package:tma_just_ui/constants/colors.dart';

class ThisTextField extends StatelessWidget {
  final TextEditingController textController;
  final String? Function(String?) validator;
  final TextInputType keyboardType;
  final Widget? trailing;

  const ThisTextField({
    Key? key,
    required this.textController,
    required this.validator,
    required this.keyboardType,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, right: 12.0),
      child: TextFormField(
        controller: textController,
        validator: validator,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        onSaved: (value) {
          textController.text = value!;
        },
        decoration: InputDecoration(
          filled: true,
          fillColor: kBlueGradientColor,
          suffixIcon: trailing,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: kBlueGradientColor,
              width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: kBlueGradientColor,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: kBlueGradientColor,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
