import 'package:bus_booking/config/routes/routes.dart';
import 'package:bus_booking/core/util/img_assets.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImgAssets.logo,
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 20),
          Text(
            "Welcome to Bus Booking App",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.login,
              );
            },
            child: const Text(" Sign in",
            style:TextStyle(color:  Colors.white,
            )
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.signUp,
              );
            },
            child: const Text("Sign up"
            ,style:TextStyle(color:  Colors.white,
            ),),
          ),
        ],
      )),
    );
  }
}
