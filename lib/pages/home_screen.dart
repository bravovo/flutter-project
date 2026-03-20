import 'package:flutter/material.dart';
import '../widgets/sections.dart';
import '../widgets/ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFDCDCDC),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 216),
                  child: Column(
                    spacing: 53,
                    children: [
                      SectionsWidget(
                        height: 369,
                        image: 'assets/images/hero-main.jpg',
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Holiday Time',
                              style: TextStyle(
                                fontFamily: 'PTSans',
                                fontSize: 64,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            const Text(
                              'Автентичний відпочинок серед українського колориту!',
                              style: TextStyle(
                                fontFamily: "PTSans",
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SectionsWidget(
                        height: 604,
                        image: 'assets/images/hero-second.jpg',
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: 864,
                                  height: 167,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 26,
                                    vertical: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(
                                      0xFFFFFFFF,
                                    ).withValues(alpha: 0.8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x40000000),
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Полонини Карпат, у селі Орів посеред гір розташувався затишний куточок для незабутніх вражень. Справжні українські гори, власноручне сироваріння на полонині, водоспади та вікові дерева чекають на Вас.',
                                        style: TextStyle(
                                          fontFamily: 'PTSans',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xFF202846),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  width: 245,
                                  height: 68,
                                  top: -30,
                                  right: 30,
                                  child: FilledButton.icon(
                                    style: FilledButton.styleFrom(
                                      backgroundColor: const Color(0xFF202846),
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 24,
                                        vertical: 12,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    icon: const Text(
                                      'Переглянути',
                                      style: TextStyle(
                                        fontFamily: "PTSans",
                                        fontSize: 24,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    label: const Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      print("");
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 412,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 31,
                        ),
                        color: Color(0xFFC1C1C3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          spacing: 18,
                          children: [
                            Expanded(
                              child: SectionsWidget(
                                height: 349,
                                image: 'assets/images/hero-third.png',
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 349,
                                color: const Color(0xFFEAEAEB),
                                padding: const EdgeInsets.all(20),
                                child: const Center(
                                  child: Text(
                                    'Активний відпочинок у нетипових локаціях. \nНезабутня природа та місцевий \nколорит подарують Вам неймовірні враження.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "PTSans",
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF202846),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 518,
                        height: 481,
                        color: Color(0xFFF2EEEE),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.fromLTRB(0, 21, 0, 62),
                              child: Text(
                                "Зворотній зв'язок",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "PTSans",
                                  fontSize: 24,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF414141),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(
                                vertical: 0,
                                horizontal: 55,
                              ),
                              child: Column(
                                spacing: 71,
                                children: [
                                  Input(
                                    hintText: "Введіть ім’я",
                                    labelText: "Ім’я",
                                  ),
                                  Input(
                                    hintText: "Введіть номер телефону",
                                    labelText: "Номер телефону",
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              width: double.infinity,
                              height: 104,
                              child: FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFF444765),
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 116,
                                    vertical: 28,
                                  ),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                ),
                                child: const Text(
                                  'Запросити виклик',
                                  style: TextStyle(
                                    fontFamily: "PTSans",
                                    fontSize: 24,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                onPressed: () {
                                  print("");
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
