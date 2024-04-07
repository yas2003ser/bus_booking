import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: const Color(0xff042F40),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ArrowSpeed",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30)),
                        Text("Book your Bus!",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.greenAccent, fontSize: 20)),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                      child:
                          const Icon(Icons.notifications, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: 313,
            height: 329,
            child: const Center(child: Text("data")),
          ),
        )
      ],
    );
  }
}
