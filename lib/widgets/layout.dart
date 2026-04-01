import 'package:flutter/material.dart';
import './sections.dart';

class LayoutWidget extends StatefulWidget {
  final Widget page;
  const LayoutWidget({super.key, required this.page});

  @override
  _LayoutWidgetState createState() => _LayoutWidgetState();
}

class _LayoutWidgetState extends State<LayoutWidget> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 1235;

    return Scaffold(
      drawer: isMobile
          ? Drawer(
              backgroundColor: const Color(0xFF202846),
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      "Головна",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => Navigator.pushNamed(context, '/home'),
                  ),
                  ListTile(
                    title: Text(
                      "Про нас",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => Navigator.pushNamed(context, '/about'),
                  ),
                  ListTile(
                    title: Text(
                      "Забронювати",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => Navigator.pushNamed(context, '/book'),
                  ),
                  ListTile(
                    title: Text(
                      "Контакти",
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => Navigator.pushNamed(context, '/contacts'),
                  ),
                ],
              ),
            )
          : null,
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
            bottom: isMobile ? 30 : 100,
            right: isMobile ? 20 : 45,
            child: GestureDetector(
              onTap: () => print("Натиснуто"),
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(161, 85, 87, 104),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset('assets/images/arrow.png', height: 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
