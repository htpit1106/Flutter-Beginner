import 'package:flutter/material.dart';

class TextFormFieldcustom extends StatelessWidget {
  TextFormFieldcustom({
    super.key,
    required this.controller,

    required this.hint,
    this.obscure = false,
    required this.validator,
  });

  final String? Function(String?) validator;

  final TextEditingController controller;

  final String hint;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(),
        fillColor: Color(0xFFF1F4FF),
        filled: true,
      ),
      validator: validator,
      controller: controller,
      obscureText: obscure,
    );
  }
}
