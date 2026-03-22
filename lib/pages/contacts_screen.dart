import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/ui.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  _ContactsScreenState createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
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
              PageBanner(text: "Контакти", isMobile: isMobile),
              Container(
                padding: isMobile
                    ? const EdgeInsets.only(bottom: 50, left: 10, right: 10)
                    : const EdgeInsets.only(bottom: 50, left: 250, right: 250),
                child: Column(
                  spacing: isMobile ? 15 : 28,
                  children: [
                    Flex(
                      direction: isMobile ? Axis.vertical : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: isMobile
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      spacing: isMobile ? 40 : 0,
                      children: [
                        ContactWidget(
                          title: "Телефон",
                          content: "+38(097)119-89-83",
                          isMobile: isMobile,
                        ),
                        ContactWidget(
                          title: "Графік роботи",
                          content:
                              "пн-пт 08:00-22:00\nсб 09:00-21:00\nвс 10:00-20:00",
                          isMobile: isMobile,
                        ),
                        ContactWidget(
                          title: "Ел. пошта",
                          content: "hello@gmail.com",
                          isMobile: isMobile,
                        ),
                      ],
                    ),
                    const SizedBox(height: 52),
                    Flex(
                      direction: isMobile ? Axis.vertical : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: isMobile ? 40 : 0,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContactWidget(
                              title: "Адреса офісу",
                              content: "м. Київ, вул. Малевича, буд. 4",
                              isMobile: isMobile,
                            ),
                          ],
                        ),
                        Container(
                          width: isMobile ? double.infinity : 550,
                          height: isMobile ? 250 : 310,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x33000000),
                                offset: Offset(0, 4),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'assets/images/map.png',
                              fit: BoxFit.cover,
                            ),
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
      },
    );
  }
}
