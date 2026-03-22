import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widgets.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 1100;
        double sidePadding = isMobile ? 16 : 215;

        return Container(
          color: const Color(0xFFDCDCDC),
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            spacing: isMobile ? 30 : 56,
            children: [
              Container(
                width: double.infinity,
                height: isMobile ? 100 : 140,
                color: const Color(0xFFC6C6DC),
                padding: EdgeInsets.only(left: isMobile ? 20 : 227),
                alignment: isMobile ? Alignment.center : Alignment.centerLeft,
                child: Text(
                  "Забронювати будиночок",
                  style: TextStyle(
                    fontFamily: 'PTSans',
                    fontSize: isMobile ? 28 : 48,
                    fontStyle: FontStyle.italic,
                    color: const Color(0xFF202846),
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: sidePadding),
                child: Container(
                  height: 73,
                  color: const Color(0xFFE8E8E8),
                  child: Stack(
                    children: [
                      const Center(
                        child: Text(
                          "Оберіть місцерозташування",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0x9B000000),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child: Image.asset(
                            'assets/images/polygon-down.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: sidePadding),
                child: Column(
                  spacing: 36,
                  children: [
                    PlaceCard(
                      title: "Незвідана Бакота",
                      text:
                          "У Хмельницькій області розташований загублений край - Бакота. Мальовничий каньйон з давньою історією захоплює своїми просторами та незвичною атмосферою. Бджільництво, свіжий мед із польових трав, дотик до природи.",
                      image: 'assets/images/book-bakota.png',
                    ),
                    PlaceCard(
                      title: "Полонини Карпат",
                      text:
                          "Полонини Карпат, у селі Орів посеред гір розташувався затишний куточок для незабутніх вражень. Справжні українські гори, власноручне сироваріння на полонині, водоспади та вікові дерева чекають на Вас.",
                      image: 'assets/images/book-carpaty.png',
                    ),
                    PlaceCard(
                      title: "Автентична Київщина",
                      text:
                          "Неподалік центра Києва розташувалось автентичне українське село на території однойменного села Пирогово. Дерев’яні млини, запашний хліб, приготовлений своїми руками, українські пісні та багато іншого чекає на вас уже зараз.",
                      image: 'assets/images/book-kyiv.png',
                    ),
                    PlaceCard(
                      title: "Нетипова Одещина",
                      text:
                          "В Одеській області знаходиться мальовниче містечко Вилкове. Його ще називають «українською Венецією». Вилкове - це містечко на воді, весь в каналах. Розташоване в місці, де зустрічаються річка Дунай і Чорне море. Люди пересуваються переважно човнами. Нетипове українське село не залишить Вас без вражень.",
                      image: 'assets/images/book-odesa.png',
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
