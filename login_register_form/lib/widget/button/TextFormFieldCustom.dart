
import 'package:flutter/material.dart';

class Textformfieldcustom extends StatelessWidget {
  Textformfieldcustom({
    super.key,
    required this.controller,

    required this.hint,
    this.obscure = false, required this.validate,
  });
  final String? Function(String?) validate;

  final TextEditingController controller;

  final String hint;
  bool obscure ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(),
        fillColor: Color(0xFFF1F4FF),
        filled: true
      ),
      validator:  validate,
      controller: controller,
      obscureText: obscure,
    );
  }
}
