import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/ui.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key});

  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 1235;
        return Container(
          color: const Color(0xFFDCDCDC),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageBanner(
                text: "Бронювання будиночка в Карпатах",
                isMobile: isMobile,
              ),
              Stack(
                children: [
                  Padding(
                    padding: isMobile
                        ? EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                        : EdgeInsets.symmetric(horizontal: 160, vertical: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 70),
                        Flex(
                          direction: isMobile ? Axis.vertical : Axis.horizontal,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 8,
                          children: [
                            Expanded(
                              flex: isMobile ? 0 : 1,
                              child: Column(
                                spacing: 8,
                                children: [
                                  Image.asset(
                                    'assets/images/book-carpaty.png',
                                    width: 600,
                                    height: 300,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.asset(
                                    'assets/images/details-1.png',
                                    width: 600,
                                    height: 340,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: isMobile ? 0 : 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 8,
                                children: [
                                  Container(
                                    height: 370,
                                    padding: isMobile
                                        ? EdgeInsets.symmetric(
                                            horizontal: 15,
                                            vertical: 15,
                                          )
                                        : const EdgeInsets.symmetric(
                                            horizontal: 90,
                                            vertical: 15,
                                          ),
                                    color: const Color(0xFFC7C7C7),
                                    child: Center(
                                      child: Text(
                                        "Затишні дерев’яні будиночки, які заховались на окраїні лісу, зустрічатимуть Вас чудовим краєвидом на ранкові полонини.\n\nВи можете обрати кількість кімнат та місце, яке буде ідеальним для Вас. Територія, на якій базуються будиночки, підійде як і для великих компаній, яким потрібно бути поряд у декількох будинках, так ідля пар, які хочуть бути на одинці.",
                                        style: TextStyle(
                                          fontFamily: "PTSans",
                                          fontSize: isMobile ? 16 : 20,
                                          color: const Color(0xFF000000),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    spacing: 8,
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          'assets/images/details-2.png',
                                          width: 440,
                                          height: 270,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Image.asset(
                                          'assets/images/details-3.png',
                                          width: 420,
                                          height: 270,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        const Center(
                          child: Text(
                            "Наявність місць",
                            style: TextStyle(
                              fontFamily: "PTSans",
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF202846),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Container(
                          padding: isMobile
                              ? const EdgeInsets.only(
                                  left: 10,
                                  top: 25,
                                  bottom: 25,
                                  right: 10,
                                )
                              : const EdgeInsets.only(
                                  left: 25,
                                  top: 25,
                                  bottom: 25,
                                  right: 80,
                                ),
                          color: const Color(0xFF90A4AE),
                          child: isMobile
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DateTimePicker(title: "Дата заїзду"),
                                    const SizedBox(height: 15),
                                    DateTimePicker(title: "Дата виїзду"),
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Input(
                                            hintText: "1",
                                            labelText: "Номери",
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Input(
                                            hintText: "2",
                                            labelText: "Дорослі",
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: Input(
                                            hintText: "0",
                                            labelText: "Діти",
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                      width: double.infinity,
                                      child: FilledButton(
                                        style: FilledButton.styleFrom(
                                          backgroundColor: const Color(
                                            0xFF202846,
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 20,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              0,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          "Перевірити наявність\nвільних місць",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            DateTimePicker(
                                              title: "Дата заїзду",
                                            ),
                                            const SizedBox(width: 20),
                                            DateTimePicker(
                                              title: "Дата виїзду",
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 135,
                                              child: Input(
                                                hintText: "1",
                                                labelText: "Номери",
                                              ),
                                            ),
                                            const SizedBox(width: 20),
                                            SizedBox(
                                              width: 135,
                                              child: Input(
                                                hintText: "2",
                                                labelText: "Дорослі",
                                              ),
                                            ),
                                            const SizedBox(width: 20),
                                            SizedBox(
                                              width: 135,
                                              child: Input(
                                                hintText: "0",
                                                labelText: "Діти",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    FilledButton(
                                      style: FilledButton.styleFrom(
                                        fixedSize: const Size(250, 100),
                                        backgroundColor: const Color(
                                          0xFF202846,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 20,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            0,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Перевірити наявність\nвільних місць",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                        const SizedBox(height: 40),
                        Table(
                          border: TableBorder.all(color: Color(0xFF8F98B9)),
                          columnWidths: const {
                            0: FlexColumnWidth(1),
                            1: FlexColumnWidth(3),
                            2: FlexColumnWidth(1),
                          },
                          children: [
                            TableRow(
                              decoration: BoxDecoration(
                                color: Color(0xFF4C536B),
                              ),
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Вміщує",
                                      style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontFamily: "PTSans",
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Тип розміщення",
                                      style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontFamily: "PTSans",
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "Ціна",
                                      style: TextStyle(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontFamily: "PTSans",
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              decoration: BoxDecoration(
                                color: Color(0xFFCFCFD1),
                              ),
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(Icons.people, size: 40),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Двомісний номер",
                                        style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.black,
                                          fontFamily: "PTSans",
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      Text(
                                        "1 широке двоспальне ліжко",
                                        style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.black,
                                          fontFamily: "PTSans",
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: FilledButton(
                                    onPressed: () {},
                                    style: FilledButton.styleFrom(
                                      minimumSize: const Size(120, 50),
                                      backgroundColor: const Color(0xFF687BC0),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                    ),
                                    child: Text(
                                      "Показати ціни",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "PTSans",
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: isMobile ? 10 : 100,
                    top: isMobile ? 15 : 25,
                    child: FilledButton.icon(
                      style: FilledButton.styleFrom(
                        fixedSize: const Size(150, 50),
                        backgroundColor: const Color(0xFF202846),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back, size: 18),
                      label: const Text(
                        "Назад",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
