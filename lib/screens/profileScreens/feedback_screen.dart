import 'package:flutter/material.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('FeedBack'),
      ),
      body: const Center(
        child: Text('FeedBack Screen'),
      ),
    );
  }
}