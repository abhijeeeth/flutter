import 'package:flutter/material.dart';
import 'package:tig/bookingsummary.dart';
import 'package:tig/junglesafari.dart';

class Programgrid extends StatelessWidget {
  const Programgrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 4, 0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 1.0,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(2, 2, 2, 0),
                    color: const Color.fromARGB(255, 28, 27, 27),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Safari()),
                            );
                          },
                          child: Image.asset(
                            'assets/Mask Group 2.png',
                            width: 85,
                            height: 85,
                          ),
                        ),
                        // const SizedBox(height: 8),
                        const Text(
                          'Jungle Safari',
                          style: TextStyle(color: Colors.white, fontSize: 9),
                        ),
                        const Text(
                          'Booking Available',
                          style: TextStyle(color: Colors.white, fontSize: 7),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Previous Booking',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 7,
              itemBuilder: (context, index) {
                // ignore: prefer_const_constructors
                return ListTile(
                  leading: Image.asset(
                    'assets/Mask Group 2.png',
                    width: 50,
                    height: 50,
                  ),
                  title: const Text(
                    "Combo Package(Safari,Trecking,Rafting etc)",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                    textAlign: TextAlign.left,
                  ),
                  subtitle: const Text(
                    "Indian Adult 1   Foreign Student  Indian Student",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 10),
                    textAlign: TextAlign.left,
                  ),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 28, 27, 27),
    );
  }
}
