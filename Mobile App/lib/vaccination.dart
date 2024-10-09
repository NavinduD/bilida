import 'package:flutter/material.dart';

class Vaccination extends StatefulWidget {
  const Vaccination({Key? key}) : super(key: key);

  @override
  State<Vaccination> createState() => _VaccinationState();
}

class _VaccinationState extends State<Vaccination> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Vaccination",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(246, 160, 194, 20),
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
