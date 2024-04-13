import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key, required this.text, required this.onPressed, required this.icon});
  final String text;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        color: Colors.white,
        elevation: 5,
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(
              width: 0.2,
            ),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Icon(
                 icon,
                  color: const Color(0xff042F40),
                ),
                const SizedBox(width: 20),
                Text(
                  text,
                  style:
                      const TextStyle(fontSize: 20, color: Color(0xff042F40)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
