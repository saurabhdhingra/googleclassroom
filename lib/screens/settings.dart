import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:googleclassroom/screens/feedback.dart';
import 'package:googleclassroom/screens/todo.dart';
import 'package:googleclassroom/widgets/drawer.dart';

import '../data.dart';
import 'class.dart';
import 'home.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool crashes = true;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF596571),
            fontSize: 17,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              'Done',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const CustomDrawer(pageName: 'settings', classNo: 2),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
              const ListTile(
                title: Text(
                  'About',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Colors.white,
                dense: false,
              ),
              Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
              const ListTile(
                title: Text(
                  'Account settings',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Colors.white,
                dense: false,
              ),
              Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
              const ListTile(
                title: Text(
                  'Default apps ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Colors.white,
                dense: false,
              ),
              Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
              ListTile(
                title: const Text(
                  'Report Crashes',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Platform.isIOS
                    ? CupertinoSwitch(
                        activeColor: Colors.blue,
                        value: crashes,
                        onChanged: (value) {
                          setState(() {
                            crashes = !crashes;
                          });
                        },
                      )
                    : Switch(
                        activeColor: Colors.blue,
                        value: crashes,
                        onChanged: (value) {
                          setState(() {
                            crashes = !crashes;
                          });
                        },
                      ),
                tileColor: Colors.white,
                dense: false,
              ),
              Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
              const ListTile(
                title: Text(
                  'Notifications',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Colors.white,
                dense: false,
              ),
              Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
              const ListTile(
                title: Text(
                  'Google Usage ID',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Colors.white,
                dense: false,
              ),
              Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
            ],
          ),
        ),
      ),
    );
  }
}
