import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tig/bookingsummary.dart';
import 'package:tig/junglesafari.dart';
import 'package:tig/login.dart';
import 'package:tig/programgrid.dart';

class DemoAppbar extends StatelessWidget {
  const DemoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Menu"),
                    content: const Text("Menu Bar"),
                    actions: [
                      TextButton(
                        child: const Text("Log Out"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          title: const Text(
            "Home",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.all(10),
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(15), // Image radius
                  child: Image.network(
                    'https://img.freepik.com/premium-photo/web-developer-digital-avatar-generative-ai_934475-9048.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 10, 160, 105),
            labelColor: Color.fromARGB(255, 255, 255, 255),
            tabs: [
              Tab(text: 'Programs'),
              Tab(text: 'Bookings'),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  prefixIcon: const Icon(Icons.search),
                  labelText: 'Search Programs',
                  labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 201, 204, 206)),
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 232, 229, 229)),
                  ),
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [Programgrid(), Safari()],
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 28, 27, 27),
      ),
    );
  }
}
