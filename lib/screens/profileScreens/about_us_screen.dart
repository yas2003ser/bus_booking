import 'package:bus_booking/core/util/img_assets.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text('About Us'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  ImgAssets.logo,
                  width: 150,
                  height: 150,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                  "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                  "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff042F40),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 120),
                  child: Text("Officiel Documentation",
                      style: TextStyle(
                        color: Color(0xff042F40),
                        fontSize: 20,
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Container(
                    width: 340,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.document_scanner, color: Color(0xff042F40)),
                        SizedBox(width: 20),
                        Text('Terms and Conditions',
                            style: TextStyle(
                                color: Color(0xff042F40), fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Container(
                    width: 340,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.lock_open_outlined,
                            color: Color(0xff042F40)),
                        SizedBox(width: 20),
                        Text('Privacy Policy',
                            style: TextStyle(
                                color: Color(0xff042F40), fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 5,
                  child: Container(
                    width: 340,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 20),
                        Icon(Icons.east_sharp, color: Color(0xff042F40)),
                        SizedBox(width: 20),
                        Text('Licence Agreement',
                            style: TextStyle(
                                color: Color(0xff042F40), fontSize: 20)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "Version 1.0.0",
                    style: TextStyle(
                      color: Color(0xff042F40),
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250),
                  child: Image.asset(
                    ImgAssets.logo,
                    width: 150,
                    height: 100,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
