import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tig/bookingsummary.dart';
import 'package:tig/login.dart';
import 'package:tig/navbar.dart';

class Safari extends StatelessWidget {
  const Safari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DemoAppbar()),
            );
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          "Jungle Safari",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              //Main Column
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  //first row
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: const Image(
                        image: AssetImage('assets/Mask Group 2.png'),
                        width: 140, // specify width if needed
                        height: 140, // specify height if needed
                      ),
                    ),
                    Row(
                      // second row
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Jungle Safari",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              const Text(
                                "Booking Available",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 27, 206, 98),
                                    fontSize: 12),
                              ),
                              TextButton(
                                  onPressed: null,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Container(
                                      // margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                                      color: const Color.fromARGB(
                                          255, 45, 201, 118),
                                      // padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      width: 225, // Set desired width
                                      height: 50,
                                      child: Center(
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SummaryBook()),
                                              );
                                            },
                                            child: Text(
                                              "Book Now",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    //2nd container
                    width: 380,
                    height: 75,
                    color: const Color.fromARGB(
                        255, 43, 42, 42), // Set background color to red
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "Week Days",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "350 INR",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Indian",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "350 INR",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Foreigner",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "350",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Children",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    //2nd container
                    width: 380,
                    height: 75,
                    color: const Color.fromARGB(
                        255, 43, 42, 42), // Set background color to red
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 2),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "Week Days",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "350 INR",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Indian",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "350 INR",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Foreigner",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "350",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Children",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    //2nd container
                    width: 380,
                    height: 75,
                    color: const Color.fromARGB(
                        255, 43, 42, 42), // Set background color to red
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 2),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "Week Days",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "350 INR",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Indian",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "350 INR",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Foreigner",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment
                              .spaceEvenly, // Space items evenly within the column
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceEvenly, // Space items evenly within the column
                                  children: [
                                    Text(
                                      "350",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Children",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 155, 155)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
    );
  }
}
