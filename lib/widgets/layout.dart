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
      body: Stack(
        children: [
          Column(
            children: [
              const Header(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [widget.page, const Footer()]),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 100,
            right: 45,
            child: Container(
              width: 101,
              height: 101,
              decoration: const BoxDecoration(
                color: Color.fromARGB(161, 85, 87, 104),
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/arrow.png', height: 43),
            ),
          ),
        ],
      ),
    );
  }
}
