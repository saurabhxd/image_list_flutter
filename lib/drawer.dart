import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_list_flutter/login.dart';
import 'auth.dart';

FirebaseUser user;

final FirebaseAuth auth = FirebaseAuth.instance;

// ignore: must_be_immutable
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
                child: Column(
              children: [
                // Container(
                //   width: 100,
                //   height: 100,
                //   margin: EdgeInsets.only(
                //     top: 30,
                //     bottom: 10,
                //   ),
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       image: NetworkImage(getphoto()),
                //       fit: BoxFit.fill,
                //     )
                //   ),
                // ),
                // Text(
                //   user.displayName,
                //   style: TextStyle(
                //     fontSize: 22,
                //     color: Colors.white,
                //   ),
                // ),
                // Text(
                //   user.email,
                //   style: TextStyle(
                //     color: Colors.white,
                //   ),
                // ),
              ],
            ))),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            'Settings',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text(
            'Sign Out',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onTap: (){
            signOutGoogle();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginPage()));
          },
        )
      ]),
    );
  }
}

