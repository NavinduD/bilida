import 'package:bilinda/screens/home.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 238, 195, 209),
                  Color.fromARGB(255, 145, 199, 243)
                ]),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: 400,
                height: 700,
                child: Card(
                    elevation: 4,
                    color: const Color.fromARGB(196, 244, 232, 254),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        ClipOval(
                          child: Image.asset(
                            'assets/child.jpg',
                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ));
  }
}
