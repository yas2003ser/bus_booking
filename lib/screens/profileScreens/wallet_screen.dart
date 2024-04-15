import 'package:bus_booking/widgets/wallet_transaction_details.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 80),
            child: Text('Wallet'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'Wallet Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            '₹ 500,545,160',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xff042F40),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Add Money',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff042F40),
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.only(right: 130),
                  child: Text(
                    'Transaction History',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff042F40),
                    ),
                  ),
                ),
                const Column(
                  children: [
                    SizedBox(height: 20),
                    WalletTransactionDetails(color: Colors.green),
                    SizedBox(height: 20),
                    WalletTransactionDetails(color: Colors.red),
                    SizedBox(height: 20),
                    WalletTransactionDetails(color: Colors.red),
                    SizedBox(height: 20),
                    WalletTransactionDetails(color: Colors.green),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
