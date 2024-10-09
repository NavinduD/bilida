import 'package:bilinda/screens/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:bilinda/screens/home.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  State<Schedule> createState() => _RemindMeState();
}

class _RemindMeState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.schedule.tr(),
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(126, 195, 169, 50),
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
          child: Padding(
            padding: const EdgeInsets.only(
                top: 150, bottom: 250, left: 50, right: 50),
            child: SizedBox(
              child: Card(
                color: const Color.fromRGBO(255, 255, 255, 100),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 35,
                    ),
                    Icon(
                      Icons.report_problem_rounded,
                      size: 60,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "AVAILABLE SOON...",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey,
                          fontFamily: 'fantasy'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
