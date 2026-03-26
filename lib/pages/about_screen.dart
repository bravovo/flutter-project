import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/sections.dart';
import 'package:flutter_application_1/widgets/ui.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 1235;
        return Container(
          color: const Color(0xFFDCDCDC),
          child: Column(
            spacing: 63,
            children: [
              PageBanner(text: "Про нас", isMobile: isMobile),
              Container(
                padding: isMobile
                    ? const EdgeInsets.only(bottom: 50, left: 10, right: 10)
                    : const EdgeInsets.only(bottom: 50, left: 173, right: 173),
                child: Column(
                  spacing: isMobile ? 15 : 28,
                  children: [
                    SectionsWidget(
                      image: 'assets/images/about-hero.png',
                      height: 227,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HolidayTime',
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
                            'Відпочинок, емоції, враження, нетипові маршрути, неймовірні локації - це все про сільський еко-туризм в Україні',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "PTSans",
                              fontSize: isMobile ? 18 : 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Color(0xFFCBCBCB),
                      alignment: Alignment.centerLeft,
                      padding: isMobile
                          ? EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                          : EdgeInsets.symmetric(horizontal: 73, vertical: 25),
                      height: 380,
                      child: Text(
                        "Наша команда зібрала найколоритніші місця нашої країни саме для тебе.\n\nМісія нашої компанії подарувати незабутні враження та показати Україну з іншої сторони. Пройти разом з Вами лісовими стежками, щоб попоїсти свіжого карпатського сиру. Пірнути у каньйон та побачити занурене під товщу років село Бакота. Покататись на гандолах в “українській Венеції”.\n\nПізнати Україну разом!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: "PTSans",
                          fontSize: isMobile ? 16 : 24,
                          color: Color(0xFF202846),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
