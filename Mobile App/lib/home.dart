import 'package:flutter/material.dart';
import 'package:home_page/model/language_model.dart';
import 'package:home_page/provider/locale_provider.dart';
import 'package:home_page/remind_me.dart';
import 'package:home_page/vaccination.dart';
import 'package:provider/provider.dart';
import 'package:home_page/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LanguageModel? chosenValue;
  final List<LanguageModel> _languages = List.empty(growable: true);

  @override
  void initState() {
    super.initState();
    _languages.add(LanguageModel(code: 'en', name: 'English'));
    _languages.add(LanguageModel(code: 'si', name: 'Sinhala'));
    _languages.add(LanguageModel(code: 'ta', name: 'Tamil'));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const NavBar(),
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
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 255, 154, 147),
            shadows: <Shadow>[
              Shadow(
                  offset: Offset(1, 1),
                  blurRadius: 3,
                  color: Color.fromARGB(255, 44, 44, 0))
            ],
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          DropdownButton<LanguageModel>(
            dropdownColor: Theme.of(context).canvasColor,
            iconEnabledColor: Theme.of(context).backgroundColor,
            items: _languages
                .map<DropdownMenuItem<LanguageModel>>((LanguageModel value) {
              return DropdownMenuItem<LanguageModel>(
                value: value,
                child: Text(
                  value.name!,
                  style: TextStyle(color: Theme.of(context).backgroundColor),
                ),
              );
            }).toList(),
            hint: const Text(
              "Language",
              style: TextStyle(fontSize: 16),
            ),
            onChanged: (LanguageModel? newValue) {
              setState(() {
                chosenValue = newValue!;
                Provider.of<LocaleProvider>(context, listen: false)
                    .setLocale(Locale(newValue.code!));
              });
            },
          ),
        ],
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
              height: 120,
            ),
            const SizedBox(
              width: 350,
              height: 200,
              child: Card(
                  elevation: 4,
                  color: Color.fromARGB(196, 244, 232, 254),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ))),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RemindMe()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(245, 138, 140, 10),
                      elevation: 4,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        "Remind Me",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "Sitka Text"),
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(220, 142, 142, 50),
                      elevation: 4,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        "Weight chart",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "Sitka Text"),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Vaccination()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(246, 160, 194, 20),
                      elevation: 4,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        "Vaccination",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "Sitka Text"),
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(218, 127, 209, 30),
                      elevation: 4,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        "Special note",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "Sitka Text"),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(242, 187, 124, 20),
                      elevation: 4,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 16, bottom: 16, left: 10, right: 10),
                      child: Text(
                        "Sight & Hearing\n Test",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 16, fontFamily: "Sitka Text"),
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(126, 195, 169, 50),
                      elevation: 4,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 25, bottom: 25, left: 34, right: 34),
                      child: Text(
                        "Schedule",
                        style:
                            TextStyle(fontSize: 16, fontFamily: "Sitka Text"),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(147, 206, 252, 10),
                      elevation: 4,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      )),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 25, bottom: 25, left: 34, right: 34),
                      child: Text(
                        "Contact",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 16, fontFamily: "Sitka Text"),
                      ),
                    )),
                const SizedBox(
                  width: 180,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
