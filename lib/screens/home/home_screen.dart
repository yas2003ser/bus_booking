import 'package:bus_booking/provider/nav_bar_provider.dart';
import 'package:bus_booking/screens/navBarScreens/booking.dart';
import 'package:bus_booking/screens/navBarScreens/home.dart';
import 'package:bus_booking/screens/navBarScreens/profile.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentIndex = ref.watch(navBarProvider);
    Widget mainScreen = Container();
    if (currentIndex == 0) {
      mainScreen = const Home();
    } else if (currentIndex == 1) {
      mainScreen = const Booking();
    } else if (currentIndex == 2) {
      mainScreen = const Profile();
    }

    return Scaffold(
      body: mainScreen,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          currentIndex: currentIndex,

          backgroundColor: const Color(0xff042F40),
          // margin: const EdgeInsets.only(left: 10, right: 10),
          itemPadding: const EdgeInsets.all(8),
          marginR: const EdgeInsets.symmetric(vertical: 0, horizontal: 50),
          paddingR: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),

          unselectedItemColor: Colors.grey[300],
          splashBorderRadius: 50,
          // enableFloatingNavBar: false,
          onTap: (index) {
            ref.read(navBarProvider.notifier).updateIndex(index);
          },
          items: [
            /// Home
            DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.black,
            ),

            DotNavigationBarItem(
              icon: const Icon(Icons.airplane_ticket),
              selectedColor: Colors.black,
            ),

            /// Profile
            DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
