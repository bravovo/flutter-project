import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final String text;
  final String image;

  const PlaceCard({
    super.key,
    required this.title,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 215),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            padding: const EdgeInsets.symmetric(horizontal: 67, vertical: 28),
            color: const Color(0xFFBDBDC6),
            child: Row(
              spacing: 72,
              children: [
                Image.asset(image, width: 485, height: 244),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF353C57),
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 3,
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 184,
                        padding: EdgeInsets.fromLTRB(23, 21, 24, 28),
                        color: Color(0xFFD7D7DD),
                        child: Text(
                          text,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF202846),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            width: 200,
            height: 60,
            bottom: 10,
            right: -68,
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFF202846),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () {},
              child: const Text('Детальніше', style: TextStyle(fontSize: 24)),
            ),
          ),
          Positioned(
            top: 8,
            right: 9,
            child: IconButton(
              iconSize: 46,
              icon: Image.asset('assets/images/star.png'),
              onPressed: () {
                print("");
              },
            ),
          ),
        ],
      ),
    );
  }
}
