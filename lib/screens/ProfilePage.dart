// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:
            const Color.fromARGB(255, 0, 23, 54), // body background color
        appBar: AppBar(
          title: const Center(
            child: Text(
              "My Profile",
              style: TextStyle(fontSize: 16),
            ),
          ),
          backgroundColor: const Color.fromARGB(
              255, 0, 23, 54), // // AppBar background color
        ),
        body: Center(
          child: Container(
            width: 320,
            margin: const EdgeInsets.only(top: 0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/man.png"),
                ),
                SizedBox(
                  height: 50,
                  child: Text(
                    "Welcome to VectorCrop",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.phone,
                          size: 25,
                        ),
                        title: Text("Phone Number"),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          size: 25,
                        ),
                        title: Text("Email Address"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Center(
                    child: Card(
                      color: Colors.black,
                      child: SizedBox(
                        width: 320,
                        height: 50,
                        child: Center(
                            child: Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
