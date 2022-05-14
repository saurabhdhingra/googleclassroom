import 'package:flutter/material.dart';

import '../data.dart';
import '../screens/class.dart';
import '../screens/feedback.dart';
import '../screens/home.dart';
import '../screens/settings.dart';
import '../screens/todo.dart';

class CustomDrawer extends StatelessWidget {
  final String pageName;
  final int classNo;
  const CustomDrawer({Key? key, required this.pageName, required this.classNo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          const Image(image: AssetImage('assets/header.jpeg')),
          Divider(height: 1, thickness: 0.5, color: Colors.grey.shade300),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(
              'Classes',
            ),
            onTap: () {
              Navigator.pop(context);
              pageName == 'home'
                  ? null
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today_rounded),
            title: const Text(
              'Calendar',
            ),
            onTap: () async {
              Navigator.pop(context);
            },
          ),
          Divider(
            indent: 70,
            height: 1,
            thickness: 0.5,
            color: Colors.grey.shade300,
          ),
          ListTile(
            leading: const Icon(Icons.fact_check_outlined),
            title: const Text(
              'ToDo',
            ),
            onTap: () {
              Navigator.pop(context);
              pageName == 'todo'
                  ? null
                  : Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ToDo()));
            },
          ),
          ListTile(
              tileColor: classNo == 1 || pageName != 'class'
                  ? Colors.white
                  : Colors.blue[100],
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              leading: CircleAvatar(
                radius: 10,
                backgroundColor: classes[0].iconColor,
                child: Text(
                  classes[0].name[0],
                  style: const TextStyle(fontSize: 10),
                ),
              ),
              title: Text(
                classes[0].name,
              ),
              onTap: () {
                Navigator.pop(context);
                pageName == 'class'
                    ? classNo == 1
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ClassPage(
                                classNo: 0,
                              ),
                            ),
                          )
                        : null
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ClassPage(
                            classNo: 0,
                          ),
                        ),
                      );
              }),
          ListTile(
              tileColor: classNo == 0 || pageName != 'class'
                  ? Colors.white
                  : Colors.blue[100],
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              leading: CircleAvatar(
                radius: 10,
                backgroundColor: classes[1].iconColor,
                child: Text(
                  classes[1].name[0],
                  style: const TextStyle(fontSize: 10),
                ),
              ),
              title: Text(
                classes[1].name,
              ),
              onTap: () {
                Navigator.pop(context);

                pageName == 'class'
                    ? classNo == 0
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ClassPage(
                                classNo: 1,
                              ),
                            ),
                          )
                        : null
                    : Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ClassPage(
                            classNo: 1,
                          ),
                        ),
                      );
              }),
          Divider(
            indent: 70,
            height: 1,
            thickness: 0.5,
            color: Colors.grey.shade300,
          ),
          ListTile(
            leading: const Icon(
              Icons.folder_open,
            ),
            title: const Text(
              'Classroom folders',
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings_outlined,
            ),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              pageName == 'settings'
                  ? null
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settings()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback_outlined),
            title: const Text('Send Google feedback'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FeedbackPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline_rounded),
            title: const Text('Help'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
