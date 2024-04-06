import 'package:bus_booking/core/util/img_assets.dart';
import 'package:bus_booking/widgets/button_state.dart';
import 'package:flutter/material.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> text = ['Actived', 'Confirmed', 'Cancelled'];
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Text(
              'Booking',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff042F40),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < 3; i++)
                  ButtonState(index: i, text: text[i]),
              ],
            ),
            const SizedBox(height: 50),
            Image.asset(ImgAssets.tickets),
            const SizedBox(height: 30),
            Image.asset(ImgAssets.tickets),
          ],
        ),
      ),
    );
  }
}
