import 'package:bus_booking/widgets/offers.dart';
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Offers'),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Offers(
                coponName: 'TOPG',
                offerText: 'Get 50% off on your first booking',
              ),
              SizedBox(height: 40),
              Offers(
                coponName: ' AR50',
                offerText: 'Flat 50% off on your first Time User',
              ),
              SizedBox(height: 40),
              Offers(
                coponName: ' GPAY100',
                offerText: 'Get 100% cashback on your first booking',
              ),
              SizedBox(height: 40),
              Offers(
                coponName: ' PAYTM50',
                offerText: 'Get 50% off on your first booking',
              ),
            ],
          ),
        ));
  }
}
