import 'package:bus_booking/widgets/field_search.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: 313,
            height: 329,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const FieldSearch(
                    icon: Icons.directions_bus_filled,
                    text: 'From',
                  ),
                  const SizedBox(height: 20),
                  const FieldSearch(
                    icon: Icons.directions_bus_filled_outlined,
                    text: 'To',
                  ),
                  const SizedBox(height: 20),
                  const FieldSearch(
                    icon: Icons.calendar_today,
                    text: 'Date',
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff042F40),
                      minimumSize: const Size(280, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Search Buses",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}