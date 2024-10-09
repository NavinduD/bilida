import 'package:flutter/material.dart';
import 'package:home_page/home.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bilida",
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
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        centerTitle: true,
      ),
    );
  }
}
