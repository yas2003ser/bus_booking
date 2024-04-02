// ignore_for_file: library_private_types_in_public_api, unused_element, use_build_context_synchronously, avoid_print, deprecated_member_use

import 'package:bus_booking/config/routes/routes.dart';
import 'package:bus_booking/core/util/img_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String username;
  late String email;
  late String password;
  late String confirmPassword;
  late String errorMessage;
  bool passvis = true;
  bool passvis1 = true;
  late TextEditingController _emailController;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
              vertical: size.height * 0.035,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    ImgAssets.logo,
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(height: size.height * 0.023),
                Text(
                  "Signup to Bus Booking App",
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: size.height * 0.018),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        onChanged: (value) {
                          email = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                      SizedBox(height: size.height * 0.016),
                      TextFormField(
                        onChanged: (value) {
                          username = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        style: const TextStyle(color: Colors.black),
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: "Username",
                        ),
                      ),
                      SizedBox(height: size.height * 0.016),
                      TextFormField(
                        onChanged: (value) {
                          password = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        obscureText: passvis,
                        style: const TextStyle(color: Colors.black),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Password",
                          suffixIcon: IconButton(
                            icon: Icon(passvis
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passvis = !passvis;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.016),
                      TextFormField(
                        onChanged: (value) {
                          confirmPassword = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          if (value != password) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        obscureText: passvis1,
                        style: const TextStyle(color: Colors.black),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          suffixIcon: IconButton(
                            icon: Icon(passvis1
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                passvis1 = !passvis1;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.025),
                      ElevatedButton(
                        onPressed: ()  {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, Routes.informationScreen);
                          }
                        },
                        child: Text(
                          "Sign up",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.034),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Already have an account?",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: const Color.fromARGB(255, 65, 73, 75)),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.login);
                      },
                      child: Text(
                        "Sign in",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1!
                            .copyWith(color: Colors.black),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
