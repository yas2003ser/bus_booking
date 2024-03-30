import 'package:bus_booking/config/routes/routes.dart';
import 'package:bus_booking/config/theme/theme.dart';
import 'package:flutter/material.dart';

class BusBooking extends StatelessWidget {
  const BusBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Bus Booking App',
      theme: lightTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      
    );
  }
}
