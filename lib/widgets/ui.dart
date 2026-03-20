import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hintText;
  final String labelText;

  const Input({super.key, required this.hintText, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 28, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Color(0xFFD1D5DB), width: 2),
        ),
        labelText: labelText,
        labelStyle: TextStyle(color: Color(0xFFD1D5DB)),
      ),
    );
  }
}
