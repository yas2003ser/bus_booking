import 'package:bus_booking/provider/auth_provider.dart';
import 'package:bus_booking/screens/profileScreens/about_us_screen.dart';
import 'package:bus_booking/screens/profileScreens/feedback_screen.dart';
import 'package:bus_booking/screens/profileScreens/offers_screen.dart';
import 'package:bus_booking/screens/profileScreens/wallet_screen.dart';
import 'package:bus_booking/widgets/profile_buttons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
        'text': 'Offers',
        'OnPressed': () {
          onPressed(const OffersScreen());
        },
        'icon': Icons.local_offer_outlined
      },
      {
        'text': 'Feedback',
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

    // Fetch User Data
    final user = FirebaseAuth.instance.currentUser;
    final userDataStream = FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .snapshots();

    return StreamBuilder<DocumentSnapshot>(
      stream: userDataStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }

        if (!snapshot.hasData || !snapshot.data!.exists) {
          return const Text('No user data found');
        }

        final userData = snapshot.data!.data() as Map<String, dynamic>;
        final imageUrl = userData['image_url'] ?? '';
        final username = userData['username'] ?? '';
        final email = userData['email'] ?? '';
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
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(imageUrl),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Text(
                              email,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              username,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          onPressed: () {
                            // Implement edit functionality
                          },
                          icon: const Icon(Icons.edit, color: Colors.white),
                        )
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
                      text: profileButtons['text'] as String,
                      onPressed: profileButtons['OnPressed'] as void Function(),
                      icon: profileButtons['icon'] as IconData,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
}
