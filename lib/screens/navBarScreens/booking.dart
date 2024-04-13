import 'package:bus_booking/core/util/img_assets.dart';
import 'package:bus_booking/provider/button_state_provide.dart';
import 'package:bus_booking/widgets/button_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Booking extends ConsumerWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> text = ['Actived', 'Confirmed', 'Cancelled'];
    final buttonState = ref.watch(buttonStateProvider);
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
            const SizedBox(height: 20),
            if (buttonState == 0)
              const Column(
                children: [
                  SizedBox(height: 80),
                  Text("No Bookings Yet", style: TextStyle(fontSize: 20)),
                ],
              )
            else if (buttonState == 1)
              Image.asset(ImgAssets.tickets)
            else
              Column(
                children: [
                  const SizedBox(height: 50),
                  Image.asset(ImgAssets.tickets),
                  const SizedBox(height: 20),
                  Image.asset(ImgAssets.tickets)
                ],
              ),
          ],
        ),
      ),
    );
  }
}
