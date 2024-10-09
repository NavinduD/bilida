// ignore_for_file: deprecated_member_use

import 'package:bilinda/screens/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:bilinda/screens/home.dart';
// import 'package:url_launcher/url_launcher.dart';

// void launchUrl(String url) async {
//   if (await canLaunch(url)) {
//     launch(url);
//   } else {
//     throw "Could not launch $url";
//   }
// }

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _RemindMeState();
}

class _RemindMeState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            LocaleKeys.contact.tr(),
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(147, 206, 252, 10),
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
          child: ListView(
            children: <Widget>[
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                title: const Text(
                  'Sri Lanka National association of counseliors',
                  style: TextStyle(
                    color: Color(0xffe91ffb),
                  ),
                ),
                subtitle: const Text(
                  'Phone: 077 738 2320',
                ),
                // onTap: () => launchUrl("+9477 738 2320"),
              ),
              const Divider(),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                title: const Text(
                  'Mindful Life Counseling Center',
                  style: TextStyle(
                    color: Color(0xffe91ffb),
                  ),
                ),
                subtitle: const Text('Phone: 070 2259599'),
                // onTap: () => launchUrl("070 2259599"),
              ),
              const Divider(),
              ListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                title: const Text(
                  'Child Adolescent and family Services',
                  style: TextStyle(
                    color: Color(0xffe91ffb),
                  ),
                ),
                subtitle: const Text('Phone: 076 406 7004'),
                // onTap: () => launchUrl("070 2259599"),
              ),
              const Divider(),
              const ListTile(
                title: Text(
                  'PsycholLife Center',
                  style: TextStyle(
                    color: Color(0xffe91ffb),
                  ),
                ),
                subtitle: Text('Phone: 0777 676 414'),
                // onTap: () => launchUrl("0777 676 414"),
              ),
              const Divider(),
              const ListTile(
                title: Text(
                  'Dr.M.N.Lukmanul Hakeem',
                  style: TextStyle(
                    color: Color(0xffe91ffb),
                  ),
                ),
                subtitle: Text('Phone: 077 937 3756'),
                // onTap: () => launchUrl("077 937 3756"),
              ),
            ],
          ),
        ));
  }
}
