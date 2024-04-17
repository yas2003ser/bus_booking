import 'package:flutter/material.dart';

class FeedBackButton extends StatelessWidget {
  const FeedBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: 320,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.call, color: Color(0xff042F40)),
            SizedBox(width: 20),
            Text('Call Us Now',
                style: TextStyle(color: Color(0xff042F40), fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
