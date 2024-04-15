import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Offers extends StatelessWidget {
  const Offers({super.key, required this.coponName, required this.offerText});
  final String coponName;
  final String offerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: DottedBorder(
        borderType: BorderType.RRect,
        padding: const EdgeInsets.symmetric(vertical: 13),
        color: const Color(0xff042F40),
        dashPattern: const [5, 5],
        strokeWidth: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              coponName,
              style: const TextStyle(color: Color(0xff042F40), fontSize: 15),
            ),
            const Text(
              "|",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Text(
              offerText,
              style: const TextStyle(
                color: Color(0xff042F40),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
