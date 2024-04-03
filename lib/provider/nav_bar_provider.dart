import 'package:flutter_riverpod/flutter_riverpod.dart';


class NavBarProvider extends StateNotifier<int> {
  NavBarProvider() : super(0);

  void updateIndex(int index) {
    state = index;
  }

}
final navBarProvider = StateNotifierProvider<NavBarProvider, int>((ref) {
  return NavBarProvider();
});
