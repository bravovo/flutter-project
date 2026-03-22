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

class NavItem extends StatelessWidget {
  final String text;

  const NavItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontFamily: 'PTSans',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFFFFFFF),
            decoration: TextDecoration.none,
          ),
        ),
        Container(
          height: 59,
          width: 1,
          color: Color(0xFFFFFFFF),
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ],
    );
  }
}

class PageBanner extends StatelessWidget {
  final String text;
  final bool isMobile;

  const PageBanner({super.key, required this.text, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: isMobile ? 100 : 140,
      color: const Color(0xFFC6C6DC),
      padding: EdgeInsets.only(left: isMobile ? 0 : 227),
      alignment: isMobile ? Alignment.center : Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'PTSans',
          fontSize: isMobile ? 28 : 48,
          fontStyle: FontStyle.italic,
          color: const Color(0xFF202846),
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
