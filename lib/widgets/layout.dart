import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/sections.dart';

class LayoutWidget extends StatefulWidget {
  final Widget page;

  const LayoutWidget({super.key, required this.page});

  @override
  _LayoutWidgetState createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [widget.page, const Footer()]),
            ),
          ),
        ],
      ),
    );
  }
}
