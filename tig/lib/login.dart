import 'package:flutter/material.dart';
import 'package:tig/junglesafari.dart';
import 'package:tig/navbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          // Added child: parameter
          mainAxisAlignment:
              MainAxisAlignment.start, // Align children to the top
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center children horizontally
          children: [
            Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              height: 100,
              width: 400,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      'PARAMBIKULAM',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'TIGER RESERVE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 0, 0, 0),
              height: 400,
              width: 400,
              margin: const EdgeInsets.symmetric(
                  vertical: 10), // Adjust the margin to control spacing
              child: const Center(
                child: Image(
                  image: AssetImage('assets/ipadcopy1.png'),
                ),
              ),
            ),
            Container(
              //plan
              margin: const EdgeInsets.symmetric(
                  vertical: 10), // Adjust the margin to control spacing
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Center(
                    child: Text(
                      'Please Login To Continue',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          60.0, 20.0, 60.0, 20.0), // Adjust padding as needed
                      child: TextField(
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 1.0,
                            ),
                          ),
                          labelText: 'Username',
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 201, 204, 206)),
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
                          60.0, 5.0, 60.0, 5.0), // Adjust padding as needed
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextField(
                            obscureText: true,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 1.0,
                                ),
                              ),
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255)),
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
                                color: const Color.fromARGB(255, 45, 201, 118),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                width: 275, // Set desired width
                                height: 50,
                                child: const Center(
                                  child: Text(
                                    'Log In',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
