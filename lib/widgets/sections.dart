import 'package:flutter/material.dart';
import './ui.dart';

class SectionsWidget extends StatelessWidget {
  final String image;
  final Widget? child;
  final double height;

  const SectionsWidget({
    super.key,
    required this.image,
    this.child,
    this.height = 369,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      color: Color(0xFF202846),
      padding: EdgeInsets.fromLTRB(138, 10, 63, 10),
      child: Row(
        children: [
          Image.asset('assets/images/logo.png', width: 178, height: 70),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NavItem(text: "Головна"),
                NavItem(text: "Про нас"),
                NavItem(text: "Забронювати"),
                NavItem(text: "Контакти"),
                NavItem(text: "Особистий кабінет"),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/globe.png',
                      width: 75,
                      height: 75,
                    ),
                    const Text(
                      "UA",
                      style: TextStyle(
                        fontFamily: 'PTSans',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 90,
          color: const Color(0xFF202846),
          padding: EdgeInsets.only(left: 60),
          alignment: Alignment.centerLeft,
          child: const Text(
            "© 2021 HolidayTime. All rights reserved",
            style: TextStyle(
              fontFamily: 'PTSans',
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: Color(0xFFEEECF1),
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
