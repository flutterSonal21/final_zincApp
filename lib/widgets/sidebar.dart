import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../firebase_interaction.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  User? _user;
  final FirebaseInteraction _firebase = FirebaseInteraction();

  @override
  void initState() {
    super.initState();
    _firebase.auth.authStateChanges().listen((event) {
      setState(() {
        _user=event;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(

            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            accountName: Text(_user!.displayName??'fintech',
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),
            ),
            accountEmail: Text(_user!.email!,
                style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                    child: Image.asset(
                      'assets/images/2.jpeg',
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ))),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outlined),
            title: Text('About'),
            onTap: (){
              Navigator.pop(context);
            },
          ),

          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: (){
              _firebase.signOut(context);
            },
          ),
        ],
      ),
    );
  }
}