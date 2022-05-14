import 'package:flutter/material.dart';
import 'package:googleclassroom/screens/feedback.dart';
import 'package:googleclassroom/screens/settings.dart';
import 'package:googleclassroom/screens/todo.dart';
import 'package:googleclassroom/data.dart';
import 'package:googleclassroom/widgets/class.dart';
import 'package:googleclassroom/widgets/drawer.dart';

import 'class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.blue,
          )),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              color: Color.fromARGB(255, 58, 66, 72),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Google Classroom',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF697883),
            fontSize: 17,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      drawer: const CustomDrawer(
        classNo: 2,
        pageName: 'home',
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView.builder(
            itemCount: classes.length,
            itemBuilder: (context, i) {
              var clas = classes[i];
              return ClassWidget(
                classNo: i,
                batch: clas.batch,
                headerimage: clas.headerImg,
                name: clas.name,
                teacher: clas.teacher,
              );
            },
          ),
        ),
      ),
    );
  }
}
