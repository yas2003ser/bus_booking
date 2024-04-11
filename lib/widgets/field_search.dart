import 'package:flutter/material.dart';

class FieldSearch extends StatelessWidget {
  const FieldSearch({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child:  Row(
        children: [
          const SizedBox(width: 10),
          Icon(icon),
          const SizedBox(width: 10),
          const Text('|', style: TextStyle(color: Colors.grey, fontSize: 20)),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: text,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
