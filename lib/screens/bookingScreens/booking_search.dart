import 'package:bus_booking/widgets/ticket_bus.dart';
import 'package:flutter/material.dart';

class BookingSearch extends StatelessWidget {
  const BookingSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: const Color(0xff042F40),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButton(
                          color: Colors.white,
                          style: ButtonStyle(
                            iconSize: MaterialStateProperty.all(22),
                          ),
                        ),
                        const Icon(Icons.timer, color: Colors.white, size: 22)
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Elma",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.2),
                                fontSize: 22)),
                        Text("Setif",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.2),
                                fontSize: 22)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('ELM',
                            style:
                                TextStyle(color: Colors.white, fontSize: 22)),
                        Text("*----------",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.2),
                                fontSize: 22)),
                        Icon(Icons.directions_bus_filled,
                            color: Colors.grey.withOpacity(0.2), size: 22),
                        Text("----------*",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.2),
                                fontSize: 22)),
                        const Text('STF',
                            style:
                                TextStyle(color: Colors.white, fontSize: 22)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const DefaultTabController(
                      length: 3, // Number of dates
                      child: TabBar(
                        indicatorColor: Colors.white,
                        labelColor: Colors.white,
                        dividerColor: Colors.transparent,
                        indicatorWeight: 0.5,
                        labelStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelColor: Color.fromARGB(255, 15, 64, 83),
                        tabs: [
                          Tab(
                            text: 'Nov 26',
                          ),
                          Tab(text: 'Nov 27'),
                          Tab(text: 'Nov 28'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            for (int i = 0; i < 4; i++)
              const Column(
                children: [
                  TicketBus(),
                  SizedBox(height: 10),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
