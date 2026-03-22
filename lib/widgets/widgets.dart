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
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 800;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 67,
                vertical: 28,
              ),
              color: const Color(0xFFBDBDC6),
              child: Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                mainAxisSize: MainAxisSize.min,
                spacing: isMobile ? 20 : 72,
                children: [
                  Image.asset(
                    image,
                    width: isMobile ? double.infinity : 485,
                    height: isMobile ? 200 : 244,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    flex: isMobile ? 0 : 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: isMobile ? 22 : 24,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: const Color(0xFF353C57),
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          thickness: 3,
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          color: const Color(0xFFD7D7DD),
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF202846),
                            ),
                          ),
                        ),
                        if (isMobile) const SizedBox(height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              width: isMobile ? 160 : 200,
              height: isMobile ? 50 : 60,
              bottom: isMobile ? 10 : 10,
              right: isMobile ? 10 : -68,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xFF202846),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Детальніше',
                  style: TextStyle(fontSize: isMobile ? 18 : 24),
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 9,
              child: IconButton(
                iconSize: isMobile ? 36 : 46,
                icon: Image.asset('assets/images/star.png'),
                onPressed: () {},
              ),
            ),
          ],
        );
      },
    );
  }
}
