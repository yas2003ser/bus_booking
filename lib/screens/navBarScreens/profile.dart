import 'package:bus_booking/provider/auth_provider.dart';
import 'package:bus_booking/screens/profileScreens/about_us_screen.dart';
import 'package:bus_booking/screens/profileScreens/feedback_screen.dart';
import 'package:bus_booking/screens/profileScreens/offers_screen.dart';
import 'package:bus_booking/screens/profileScreens/wallet_screen.dart';
import 'package:bus_booking/widgets/profile_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onPressed(Widget widget) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => widget),
      );
    }

    final List<Map> profileButton = [
      {
        'text': 'Wallet',
        'OnPressed': () {
          onPressed(const WalletScreen());
        },
        'icon': Icons.wallet_outlined
      },
      {
        'text': 'offers',
        'OnPressed': () {
          onPressed(const OffersScreen());
        },
        'icon': Icons.local_offer_outlined
      },
      {
        'text': 'FeedBack',
        'OnPressed': () {
          onPressed(const FeedBackScreen());
        },
        'icon': Icons.feedback_outlined
      },
      {
        'text': 'About Us',
        'OnPressed': () {
          onPressed(const AboutUsScreen());
        },
        'icon': Icons.info_outline
      },
      {
        'text': 'Sign Out',
        'OnPressed': () {
          ref.read(authProvider.notifier).logout(context);
        },
        'icon': Icons.logout_outlined
      },
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xff042F40),
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      // backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'John Doe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit, color: Colors.white))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          for (var profileButtons in profileButton)
            Column(
              children: [
                ProfileButton(
                  text: profileButtons['text'],
                  onPressed: profileButtons['OnPressed'],
                  icon: profileButtons['icon'],
                ),
                const SizedBox(height: 20),
              ],
            ),
        ],
      ),
    );
  }
}
