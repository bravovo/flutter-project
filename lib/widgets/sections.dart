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
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 1235;

    return Container(
      width: double.infinity,
      height: 90,
      color: const Color(0xFF202846),
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 138),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/logo.png', width: 150, height: 60),
          if (isMobile)
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.white, size: 30),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )
          else
            Row(
              children: [
                const NavItem(text: "Головна"),
                const NavItem(text: "Про нас"),
                const NavItem(text: "Забронювати"),
                const NavItem(text: "Контакти"),
                const NavItem(text: "Особистий кабінет"),
                const SizedBox(width: 20),
                Image.asset('assets/images/globe.png', width: 30, height: 30),
                const Text(
                  " UA",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
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
