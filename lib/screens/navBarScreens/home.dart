import 'package:bus_booking/widgets/home_rotes.dart';
import 'package:bus_booking/widgets/search_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(alignment: Alignment.center, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: const Color(0xff042F40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("BusBooking",
                          style: TextStyle(color: Colors.white, fontSize: 22)),
                      Text("Book your Bus!",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.greenAccent, fontSize: 17)),
                    ],
                  ),
                  Icon(
                    Icons.circle_notifications_outlined,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  height: 290,
                ),
                HomeRoutes(
                  text: 'Popular Routes',
                ),
                SizedBox(
                  height: 30,
                ),
                HomeRoutes(
                  text: 'Recent Searches',
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 120),
          child: SearchCard(),
        )
      ]),
    );
  }
}
