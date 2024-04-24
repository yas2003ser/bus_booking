import 'package:bus_booking/widgets/booking_routes.dart';
import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text('FeedBack'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0),
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      hintText: 'Search for FAQ\'s ',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: const Icon(Icons.search),
                    ),
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ExpansionTileCard(
                  title: const Text('How to use the app?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff042F40),
                      )),
                  elevation: 5,
                  initialElevation: 10,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  children: const <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 10, bottom: 10, top: 10),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ExpansionTileCard(
                  title: const Text('How to use the app?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff042F40),
                      )),
                  elevation: 10,
                  initialElevation: 10,
                  shadowColor: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  children: const <Widget>[
                    Divider(
                      thickness: 1.0,
                      height: 1.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 10, bottom: 10, top: 10),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Text(
                    "Issus With Recent Bookings ?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff042F40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                        from: 'Batna',
                        to: 'Setif',
                        price: 'Timgad travel',
                      ),
                      SizedBox(width: 10),
                      BookingRoutes(
                        from: 'Constantine',
                        to: 'Alger',
                        price: 'Timgad travel',
                      ),
                      SizedBox(width: 10),
                      BookingRoutes(
                        from: 'Elma',
                        to: 'Oran',
                        price: 'Timgad travel',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 170),
                  child: Text(
                    "Need More Help ?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff042F40),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Container(
                    width: 340,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.call, color: Color(0xff042F40)),
                        SizedBox(width: 20),
                        Text('Call Us Now',
                            style: TextStyle(
                                color: Color(0xff042F40), fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Container(
                    width: 340,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.messenger_outline_outlined,
                            color: Color(0xff042F40)),
                        SizedBox(width: 20),
                        Text('Chat with our Agent',
                            style: TextStyle(
                                color: Color(0xff042F40), fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Container(
                    width: 340,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.mail_outline_outlined,
                            color: Color(0xff042F40)),
                        SizedBox(width: 20),
                        Text('mail your issue to us',
                            style: TextStyle(
                                color: Color(0xff042F40), fontSize: 20)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
