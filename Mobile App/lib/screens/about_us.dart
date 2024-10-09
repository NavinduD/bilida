
import 'package:flutter/material.dart';

import 'home.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _ProfileState();
}

class _ProfileState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color.fromARGB(255, 255, 154, 147),
            shadows: <Shadow>[
              Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 3,
                  color: Color.fromARGB(255, 44, 44, 0))
            ],
          ),
          title: Text("About Us",
              style: TextStyle(
                  shadows: const <Shadow>[
                    Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 3,
                        color: Color.fromARGB(255, 44, 44, 0))
                  ],
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 255, 255, 255),
                        Colors.deepPurpleAccent,
                        Color.fromARGB(255, 255, 154, 147)
                      ],
                    ).createShader(
                        const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(245, 138, 140, 10),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 238, 195, 209),
                  Color.fromARGB(255, 145, 199, 243)
                ]),
          ),
        ));
  }
}
