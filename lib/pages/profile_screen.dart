import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/sections.dart';
import 'package:flutter_application_1/widgets/ui.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 1235;
        return Container(
          color: const Color(0xFFDCDCDC),
          child: Column(
            spacing: 63,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageBanner(text: "Особистий кабінет", isMobile: isMobile),
              Container(
                padding: isMobile
                    ? const EdgeInsets.only(bottom: 50, left: 10, right: 10)
                    : const EdgeInsets.only(bottom: 50, left: 283, right: 283),
                alignment: Alignment.topCenter,
                child: Column(
                  spacing: isMobile ? 20 : 40,
                  children: [
                    Container(
                      color: Color(0xFFBDBDC6),
                      padding: isMobile
                          ? EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                          : EdgeInsets.symmetric(horizontal: 73, vertical: 25),
                      height: isMobile ? null : 498,
                      child: Center(
                        child: Flex(
                          direction: isMobile ? Axis.vertical : Axis.horizontal,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 160,
                                  height: 160,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.person_outline,
                                    size: 80,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Button(
                                  color: Color(0xFF69749B),
                                  text: "Змінити аватар",
                                ),
                                const SizedBox(height: 30),
                                Button(
                                  color: Color(0xFF484A54),
                                  text: "Налаштування",
                                ),
                              ],
                            ),
                            if (!isMobile) const SizedBox(width: 80),
                            if (isMobile) const SizedBox(height: 50),
                            Expanded(
                              flex: isMobile ? 0 : 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ProfileInfoField(
                                    label: "Петров Іван Іванович",
                                    text: "",
                                  ),
                                  ProfileInfoField(
                                    label: "Стать:",
                                    text: " чоловіча",
                                  ),
                                  ProfileInfoField(
                                    label: "Дата народження:",
                                    text: " 10. 02. 1998",
                                  ),
                                  ProfileInfoField(
                                    label: "Мобільний телефон:",
                                    text: " +38(097)346-72-50",
                                  ),
                                  ProfileInfoField(
                                    label: "Ел. пошта:",
                                    text: " petrov@gmail.com",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Button(color: const Color(0xFF202846), text: "Вийти"),
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
