import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String label;
  final String? Function(String? value) validator;
  final ValueChanged<String> onChanged;
  final bool obscureText;
  const InputTextWidget(
      {Key? key,
      this.textInputType = TextInputType.text,
      this.controller,
      required this.label,
      required this.validator,
      required this.onChanged,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: label,
      ),
      onChanged: onChanged,
    );
  }
}
