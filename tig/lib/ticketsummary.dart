import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tig/bookingsummary.dart';
import 'package:tig/junglesafari.dart';
import 'package:tig/navbar.dart';

class Ticketsummary extends StatelessWidget {
  const Ticketsummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SummaryBook()),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Jungle Safari",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(0),
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
          child: Container(
        padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
        width: 1000,
        height: 900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Booking Summary",
              style: TextStyle(color: Colors.white),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                // padding: const EdgeInsets.all(5), //2nd container
                width: double.infinity,
                height: 200,
                color: const Color.fromARGB(
                    255, 43, 42, 42), // Set background color to red
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                padding: const EdgeInsets.fromLTRB(5, 1, 0, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceEvenly, // Space items evenly within the column
                      children: [
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment
                                  .start, // Space items evenly within the column
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Selected Date",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 159, 155, 155)),
                                            textAlign: TextAlign.left,
                                          ),
                                          Text(
                                            "24 September 2027",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.left,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Selected Date",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 159, 155, 155)),
                                              textAlign: TextAlign.left,
                                            ),
                                            Text(
                                              "24 September 2027",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.left,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(""),
                                const Text(
                                  "Package",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 159, 155, 155)),
                                  textAlign: TextAlign.left,
                                ),
                                const Text(
                                  "Combo Package(Safari,Trecking,Rafting etc)",
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                                const Text(""),
                                const Text(
                                  "Total",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w200),
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Column(
                                              children: [
                                                Text(
                                                  "53 Person",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  250, 0, 0, 0),
                                              child: const Column(
                                                children: [
                                                  Text(
                                                    "1180 INR",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ), // Replace text with CounterButton widget
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // ,
                  ],
                ),
              ),
            ),
            Container(
              //plan
              margin: const EdgeInsets.symmetric(
                  vertical: 10), // Adjust the margin to control spacing
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Add More Guest Details',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(''),
                  const Text(
                    '1. Indian Student',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          2.0, 20.0, 2.0, 10.0), // Adjust padding as needed
                      child: TextField(
                        style: const TextStyle(
                            color: Color.fromARGB(255, 53, 53, 53)),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 255, 255, 255),
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: const BorderSide(
                              color: Color.fromARGB(255, 25, 182, 64),
                              width: 1.0,
                            ),
                          ),
                          labelText: 'Name',
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0)),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 232, 229, 229)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          2.0, 5.0, 2.0, 5.0), // Adjust padding as needed
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextField(
                            style: const TextStyle(
                                color: Color.fromARGB(255, 53, 53, 53)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 252, 255, 253),
                                  width: 1.0,
                                ),
                              ),
                              labelText: 'E-mail',
                              labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 232, 229, 229)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          2.0, 5.0, 2.0, 5.0), // Adjust padding as needed
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextField(
                            style: const TextStyle(
                                color: Color.fromARGB(255, 53, 53, 53)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 25, 182, 64),
                                  width: 1.0,
                                ),
                              ),
                              labelText: 'Phone Number',
                              labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 232, 229, 229)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    'ID Proof',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          2.0, 5.0, 2.0, 5.0), // Adjust padding as needed
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextField(
                            style: const TextStyle(
                                color: Color.fromARGB(255, 53, 53, 53)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 25, 182, 64),
                                  width: 1.0,
                                ),
                              ),
                              labelText: 'Phone Numbers',
                              labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 232, 229, 229)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          40.0, 5.0, 40.0, 5.0), // Adjust padding as needed
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DemoAppbar()),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                color: const Color.fromARGB(255, 229, 229, 229),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                width: 275, // Set desired width
                                height: 50,
                                child: const Center(
                                  child: Text(
                                    'SUBMIT',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 13.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 70, 69, 69),
                                  width: 1))),
                      width: 380,
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      padding: const EdgeInsets.all(1),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Indian Adult",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("2 Person   +",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ) // Replace text with CounterButton widget
                                          )
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
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color.fromARGB(255, 70, 69, 69),
                                  width: 1))),
                      width: 380,
                      height: 50,
                      margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      padding: const EdgeInsets.all(1),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Indian Adult",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("2 Person   +",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                          ) // Replace text with CounterButton widget
                                          )
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          40.0, 5.0, 40.0, 5.0), // Adjust padding as needed
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DemoAppbar()),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Container(
                                color: Color.fromARGB(255, 38, 199, 100),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                width: 275, // Set desired width
                                height: 50,
                                child: const Center(
                                  child: Text(
                                    'SUBMIT',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 13.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
      backgroundColor: const Color.fromARGB(255, 30, 30, 29),
    );
  }
}
