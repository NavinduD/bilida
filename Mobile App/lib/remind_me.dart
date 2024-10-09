import 'package:flutter/material.dart';
import 'package:home_page/home.dart';

class RemindMe extends StatefulWidget {
  const RemindMe({Key? key}) : super(key: key);

  @override
  State<RemindMe> createState() => _RemindMeState();
}

class _RemindMeState extends State<RemindMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Remind Me",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(245, 138, 140, 10),
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
