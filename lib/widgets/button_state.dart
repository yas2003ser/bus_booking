import 'package:bus_booking/provider/button_state_provide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonState extends ConsumerWidget {
  const ButtonState({super.key, required this.index, required this.text});
  final int index;
  final String text;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonState = ref.watch(buttonStateProvider);
    return InkWell(
      onTap: () {
        ref.read(buttonStateProvider.notifier).setActiveButton(index);
      },
      child: Container(
        width: 120,
        height: 40,
        decoration: BoxDecoration(
          color: buttonState == index ? const Color(0xff042F40) : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: buttonState == index ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
