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
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 900;
    double horizontalPadding = isMobile ? 16 : 216;

    return Container(
      color: const Color(0xFFDCDCDC),
      padding: EdgeInsets.only(bottom: 50, top: isMobile ? 20 : 53),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              spacing: isMobile ? 24 : 53,
              children: [
                SectionsWidget(
                  height: isMobile ? 250 : 369,
                  image: 'assets/images/hero-main.jpg',
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Holiday Time',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'PTSans',
                          fontSize: isMobile ? 40 : 64,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        'Автентичний відпочинок серед українського колориту!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "PTSans",
                          fontSize: isMobile ? 18 : 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
                SectionsWidget(
                  height: isMobile ? 500 : 604,
                  image: 'assets/images/hero-second.jpg',
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: isMobile ? double.infinity : 864,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 26,
                              vertical: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.8),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x40000000),
                                  offset: Offset(0, 4),
                                  blurRadius: 4,
                                ),
                              ],
                            ),
                            child: const Text(
                              'Полонини Карпат, у селі Орів посеред гір розташувався затишний куточок для незабутніх вражень. Справжні українські гори, власноручне сироваріння на полонині, водоспади та вікові дерева чекають на Вас.',
                              style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                                color: Color(0xFF202846),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Positioned(
                            width: isMobile ? 180 : 245,
                            height: isMobile ? 50 : 68,
                            top: isMobile ? -25 : -45,
                            right: isMobile ? 10 : -30,
                            child: FilledButton.icon(
                              style: FilledButton.styleFrom(
                                backgroundColor: const Color(0xFF202846),
                              ),
                              icon: Text(
                                'Переглянути',
                                style: TextStyle(fontSize: isMobile ? 16 : 24),
                              ),
                              label: const Icon(Icons.arrow_forward, size: 20),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(isMobile ? 20 : 31),
                  color: const Color(0xFFC1C1C3),
                  child: Flex(
                    direction: isMobile ? Axis.vertical : Axis.horizontal,
                    spacing: 18,
                    children: [
                      if (!isMobile)
                        Expanded(
                          child: SectionsWidget(
                            image: 'assets/images/hero-third.png',
                            height: 349,
                          ),
                        )
                      else
                        SectionsWidget(
                          image: 'assets/images/hero-third.png',
                          height: 349,
                        ),
                      Container(
                        width: isMobile ? double.infinity : 400,
                        height: 349,
                        color: const Color(0xFFEAEAEB),
                        padding: const EdgeInsets.all(20),
                        child: const Center(
                          child: Text(
                            'Активний відпочинок у нетипових локаціях. \nНезабутня природа та місцевий \nколорит подарують Вам неймовірні враження.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF202846),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 49),
          Center(
            child: Container(
              width: isMobile ? double.infinity : 518,
              height: isMobile ? null : 481,
              decoration: const BoxDecoration(
                color: Color(0xFFF2EEEE),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 21),
                    child: Text(
                      "Зворотній зв'язок",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF414141),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 55,
                      vertical: 55,
                    ),
                    child: Column(
                      spacing: 40,
                      children: const [
                        Input(hintText: "Введіть ім’я", labelText: "Ім’я"),
                        Input(
                          hintText: "Введіть номер телефону",
                          labelText: "Номер телефону",
                        ),
                      ],
                    ),
                  ),
                  if (!isMobile) const Spacer(),
                  if (isMobile) const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 104,
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF444765),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: const Text(
                        'Запросити виклик',
                        style: TextStyle(fontSize: 24),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
