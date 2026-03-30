import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hintText;
  final String labelText;

  const Input({super.key, required this.hintText, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 19, vertical: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(color: Color(0xFFD1D5DB), width: 2),
        ),
        labelText: labelText,
        labelStyle: TextStyle(fontFamily: "PTSans", fontSize: 14),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String text;
  final String route;

  const NavItem({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'PTSans',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFFFFFF),
              decoration: TextDecoration.none,
            ),
          ),
          onPressed: () => Navigator.pushNamed(context, route),
        ),
        Container(
          height: 59,
          width: 1,
          color: Color(0xFFFFFFFF),
          margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ],
    );
  }
}

class PageBanner extends StatelessWidget {
  final String text;
  final bool isMobile;

  const PageBanner({super.key, required this.text, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: isMobile ? 100 : 140,
      color: const Color(0xFFC6C6DC),
      padding: EdgeInsets.only(left: isMobile ? 0 : 227),
      alignment: isMobile ? Alignment.center : Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'PTSans',
          fontSize: isMobile ? 28 : 48,
          fontStyle: FontStyle.italic,
          color: const Color(0xFF202846),
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Color color;
  final String text;

  const Button({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "PTSans",
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ProfileInfoField extends StatelessWidget {
  final String label;
  final String text;

  const ProfileInfoField({super.key, required this.label, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white, width: 3)),
      ),
      padding: const EdgeInsets.only(bottom: 8),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontFamily: 'PTSans',
            fontSize: 26,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Color(0xFF353C57),
          ),
          children: [
            TextSpan(text: label),
            TextSpan(
              text: text,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: 'PTSans',
                fontSize: 26,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateTimePicker extends StatefulWidget {
  final String title;

  const DateTimePicker({super.key, required this.title});

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (selectedDate != null)
          Text(
            "${selectedDate?.day.toString().padLeft(2, '0')}/"
            "${selectedDate?.month.toString().padLeft(2, '0')}/"
            "${selectedDate?.year}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        else
          Text(
            "Оберіть дату",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        const SizedBox(height: 15),
        FilledButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color(0xFF202846),
          ),
          onPressed: () async {
            final DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: selectedDate ?? DateTime.now(),
              firstDate: DateTime(2026),
              lastDate: DateTime(2027),
              currentDate: DateTime.now(),
              initialEntryMode: DatePickerEntryMode.calendar,
            );
            if (pickedDate != null && pickedDate != selectedDate) {
              setState(() {
                selectedDate = pickedDate;
              });
            }
          },
          child: Text(
            widget.title,
            style: TextStyle(fontFamily: "PTSans", fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
