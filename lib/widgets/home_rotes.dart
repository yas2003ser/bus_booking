import 'package:bus_booking/widgets/booking_routes.dart';
import 'package:flutter/material.dart';

class HomeRoutes extends StatelessWidget {
  const HomeRoutes({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 80,
            // Specify the desired height
            width: double.infinity, // Use the available width
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: const [
                BookingRoutes(
                  from: 'Batna ',
                  to: 'Setif',
                  price: '500 DA',
                ),
                SizedBox(width: 10),
                BookingRoutes(
                  from: 'Constantine',
                  to: 'Alger',
                  price: '1200 DA',
                ),
                SizedBox(width: 10),
                BookingRoutes(
                  from: 'Elma',
                  to: 'Oran',
                  price: '3500 DA',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
