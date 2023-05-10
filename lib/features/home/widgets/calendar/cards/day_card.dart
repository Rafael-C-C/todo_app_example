import 'package:flutter/material.dart';
import 'package:todo_app_tus_test/core/widgets/resizeable_text.dart';

class DayCard extends StatefulWidget {
  final String day;
  final String number;

  const DayCard({
    super.key,
    required this.day,
    required this.number,
  });

  @override
  State<DayCard> createState() => _DayCardState();
}

class _DayCardState extends State<DayCard> {
  Color _cardColor = Colors.white;
  void _changeColor() {
    setState(() {
      _cardColor = Colors.amber; // color al presionar la card
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
      child: GestureDetector(
        onTap: _changeColor,
        child: Card(
          color: _cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          elevation: 7,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            width: 50,
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResizeableText(
                      text: widget.number,
                      presetFontSizes: const [14, 12, 11, 10],
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  ResizeableText(
                      text: widget.day,
                      presetFontSizes: const [14, 12, 11, 10],
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
