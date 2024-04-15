import 'package:flutter/material.dart';

class WalletTransactionDetails extends StatelessWidget {
  const WalletTransactionDetails({super.key, required this.color});
  final Color color ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_outward_outlined,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            "19 Sep",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          const SizedBox(width: 10),
          const Text(
            "Used for Ticket",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
          const SizedBox(width: 70),
          const Text(
            "+ \$50",
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
