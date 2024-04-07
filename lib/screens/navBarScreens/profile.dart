import 'package:bus_booking/widgets/profile_buttons.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> profileButton = [
      {'text': 'Bookings', 'OnPressed': () {}},
      {'text': 'Wallet', 'OnPressed': () {}},
      {'text': 'FeedBack', 'OnPressed': () {}},
      {'text': 'About Us', 'OnPressed': () {}},
      {'text': 'Sign Out', 'OnPressed': () {}},
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
                ),
                const SizedBox(height: 20),
              ],
            ),
        ],
      ),
    );
  }
}
