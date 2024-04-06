import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonStateNotifier extends StateNotifier<int> {
  ButtonStateNotifier() : super(0);

  void setActiveButton(int index) {
    state = index;
  }
}

final buttonStateProvider =
    StateNotifierProvider<ButtonStateNotifier, int>((ref) {
  return ButtonStateNotifier();
});
