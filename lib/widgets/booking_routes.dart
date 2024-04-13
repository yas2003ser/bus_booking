import 'package:bus_booking/core/util/img_assets.dart';
import 'package:flutter/material.dart';

class BookingRoutes extends StatelessWidget {
  const BookingRoutes({super.key, required this.from, required this.to, required this.price});
  final String from ;
  final String to ;
  final String price ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        child: Row(
          children: [
            Image.asset(ImgAssets.logo),
            const SizedBox(width: 10),
             Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      from,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      to,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "From",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "DA $price",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
