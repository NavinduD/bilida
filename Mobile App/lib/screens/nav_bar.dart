import 'package:bilinda/screens/about_us.dart';
import 'package:bilinda/screens/authentication/sign_in.dart';
import 'package:bilinda/screens/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 224, 241, 255),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Name of the baby"),
            accountEmail: const Text("email"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/child.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 238, 195, 209),
                Color.fromARGB(255, 145, 199, 243),
              ]),
              // color: Color.fromARGB(161, 255, 178, 203),
            ),
          ),
          ListTile(
            iconColor: const Color.fromARGB(255, 62, 62, 62),
            leading: const Icon(Icons.person),
            title: const Text(
              'Profile',
              style: TextStyle(color: Color.fromARGB(255, 62, 62, 62)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
          ),
          ListTile(
            iconColor: const Color.fromARGB(255, 62, 62, 62),
            leading: const Icon(Icons.info),
            title: const Text(
              'About Us',
              style: TextStyle(color: Color.fromARGB(255, 62, 62, 62)),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutUs()));
            },
          ),
          ListTile(
            iconColor: const Color.fromARGB(255, 233, 94, 94),
            leading: const Icon(Icons.power_off_rounded),
            title: const Text(
              'Sign Out',
              style: TextStyle(color: Color.fromARGB(255, 233, 94, 94)),
            ),
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              // ignore: use_build_context_synchronously
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                  (Route<dynamic> route) => false);
            },
          )
        ],
      ),
    );
  }
}
