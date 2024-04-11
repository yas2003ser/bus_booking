import 'package:bus_booking/widgets/search_card.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.center,
        children: [
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        Text("Book your Bus!",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.greenAccent, fontSize: 20)),
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
              const SizedBox(height: 280),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Poular Routes",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: const Icon(Icons.directions_bus_filled),
                            ),
                            const SizedBox(height: 10),
                            const Text("Kathmandu"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: const Icon(Icons.directions_bus_filled),
                            ),
                            const SizedBox(height: 10),
                            const Text("Pokhara"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              child: const Icon(Icons.directions_bus_filled),
                            ),
                            const SizedBox(height: 10),
                            const Text("Chitwan"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SearchCard(),
        ],
      ),
    );
  }
}
