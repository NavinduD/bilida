import 'package:bilinda/screens/generated/locale_keys.g.dart';
import 'package:bilinda/screens/home.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Vaccination extends StatefulWidget {
  const Vaccination({Key? key}) : super(key: key);

  @override
  State<Vaccination> createState() => _VaccinationState();
}

class _VaccinationState extends State<Vaccination> {
  final double h1 = 40;
  final double h2 = 35;

  Widget getDateWidget(int index) {
    List text = [
      "DOB",
      "Age: 2 months",
      "Age: 4 months",
      "Age: 6 months",
      "Age: 9 months",
      "Age: 18 months",
      "Age: 3 years",
      "Age: 5 years",
      "Age: 10-14 years",
    ];
    return SizedBox(
      height: h1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("July 26, 2022"),
          Text(
            text[index],
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  SizedBox spacer() {
    return SizedBox(
      height: h2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.vaccine.tr(),
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(246, 160, 194, 20),
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
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 238, 195, 209),
                    Color.fromARGB(255, 145, 199, 243)
                  ]),
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getDateWidget(0),
                        spacer(),
                        getDateWidget(1),
                        spacer(),
                        getDateWidget(2),
                        spacer(),
                        getDateWidget(3),
                        spacer(),
                        getDateWidget(4),
                        spacer(),
                        getDateWidget(5),
                        spacer(),
                        getDateWidget(6),
                        spacer(),
                        getDateWidget(7),
                        spacer(),
                        getDateWidget(8),
                      ],
                    )),
                SizedBox(
                  width: 75,
                  child: Stack(
                    children: [
                      Center(
                        child: Container(
                          height: h1 * 9 + h2 * 8,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromRGBO(0xa1, 0xce, 0xe6, 1),
                                    Color.fromRGBO(0xe9, 0x93, 0xec, 1),
                                    Color.fromRGBO(0xa1, 0xce, 0xe6, 1),
                                    Color.fromRGBO(0xe9, 0x93, 0xec, 1),
                                  ])),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(0x42, 0xe3, 0xe3, .5)),
                          child: Center(
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(0x3A, 0x93, 0x93, 0.4)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                  child: Text("Des"),
                )
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
