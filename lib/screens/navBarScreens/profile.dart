import 'package:bus_booking/widgets/profile_buttons.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
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
          ProfileButton(
            text: 'Bookings',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          ProfileButton(
            text: 'Wallet',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          ProfileButton(
            text: 'FeedBack',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          ProfileButton(
            text: 'About Us',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          ProfileButton(
            text: 'Sign Out',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
