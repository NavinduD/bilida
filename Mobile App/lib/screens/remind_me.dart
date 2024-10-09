import 'dart:async';

import 'package:bilinda/screens/home.dart';
import 'package:flutter/material.dart';

class RemindMe extends StatefulWidget {
  const RemindMe({Key? key}) : super(key: key);

  @override
  State<RemindMe> createState() => _RemindMeState();
}

class _RemindMeState extends State<RemindMe> {
  late DateTime _date = DateTime.now();
  final DateTime date2 = DateTime.now();

  int daysleft = 0;

  int updateButton() {
    int duration = _date.difference(date2).inDays;
    daysleft = duration;

    _startCountDown();
    return daysleft;
  }

  void _startCountDown() {
    Timer.periodic(const Duration(days: 1), (timer) {
      if (daysleft > 0) {
        setState(() {
          daysleft--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Enter next clinic date :",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 124, 158, 169)),
                  ),
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: _date,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100));
                      if (newDate == null) return;
                      setState(() => _date = newDate);
                    },
                    icon: const Icon(
                      Icons.edit_calendar,
                      size: 17,
                      color: Color.fromARGB(255, 84, 84, 84),
                    ),
                    label: Text(
                      '${_date.year}/${_date.month}/${_date.day}',
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 105, 105, 105)),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: updateButton,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 124, 158, 169),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
                child: const Text('Update'),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 360,
                  height: 100,
                  child: Card(
                    elevation: 4,
                    color: const Color.fromRGBO(255, 255, 255, 100),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Next clinic day in : ",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(245, 138, 140, 10),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            height: 60,
                            child: Card(
                              elevation: 0,
                              color: const Color.fromARGB(196, 186, 186, 186),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  daysleft.toString(),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(245, 138, 140, 10),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          const Text("Days",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 105, 105, 105)))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
