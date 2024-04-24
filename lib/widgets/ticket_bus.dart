import 'package:bus_booking/screens/paymentScreens/payment_screen.dart';
import 'package:flutter/material.dart';

class TicketBus extends StatelessWidget {
  const TicketBus({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PaymentScreen()));
      },
      child: Container(
        width: 350,
        height: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.local_shipping_outlined),
                  Text('Ithri Travel',
                      style: TextStyle(fontSize: 20, color: Color(0xff042F40))),
                  Text('Setif',
                      style: TextStyle(fontSize: 20, color: Color(0xff042F40))),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("6:45",
                          style: TextStyle(
                              color: Color(0xff042F40), fontSize: 18)),
                      Text("10:55",
                          style: TextStyle(
                              color: Color(0xff042F40), fontSize: 18)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('esaai',
                          style: TextStyle(color: Colors.grey, fontSize: 18)),
                      SizedBox(width: 10),
                      Text("*----------",
                          style: TextStyle(color: Colors.grey, fontSize: 22)),
                      Icon(Icons.directions_bus_filled,
                          color: Colors.grey, size: 22),
                      Text("----------*",
                          style: TextStyle(color: Colors.grey, fontSize: 22)),
                      SizedBox(width: 10),
                      Text('chennai',
                          style: TextStyle(color: Colors.grey, fontSize: 18)),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text('4.6',
                          style: TextStyle(color: Colors.grey, fontSize: 18)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.person_3_outlined, color: Colors.redAccent),
                      Text('4',
                          style: TextStyle(color: Colors.grey, fontSize: 18)),
                    ],
                  ),
                  Text("\$ 20",
                      style: TextStyle(color: Color(0xff042F40), fontSize: 18)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
