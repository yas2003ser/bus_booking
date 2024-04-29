// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:bus_booking/config/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthProvider extends StateNotifier<User?> {
  AuthProvider() : super(null);

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void login(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      state = userCredential.user;
      if (state != null) {
        Navigator.pushNamed(context, Routes.home);
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text((e).message ?? "Failed to authenticate"),
        ),
      );
    }
  }

  void register(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredentials =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      state = userCredentials.user;
      if (state != null) {
        Navigator.pushNamed(context, Routes.informationScreen);
      }
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      log(email);
      log(password);
    }
  }

  void logout(BuildContext context) async {
    await _auth.signOut();
    state = null;
    if (state == null) {
      Navigator.pushNamed(context, Routes.login);
      
    }
  }
}

final authProvider = StateNotifierProvider<AuthProvider, User?>((ref) {
  return AuthProvider();
});
