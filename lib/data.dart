import 'package:flutter/material.dart';

class Class {
  String name;
  String teacher;
  String batch;
  String headerImg;
  Color iconColor;
  List<Map<String, String>> posts;

  Class(
      {required this.name,
      required this.teacher,
      required this.batch,
      required this.headerImg,
      required this.posts,
      required this.iconColor});
}

List<Class> classes = [
  Class(
      name: "Mathematics 1",
      teacher: "Praful Kumar Aggarwal",
      batch: "2020-24",
      headerImg: "assets/class1.jpeg",
      iconColor: Colors.blue,
      posts: [
        {
          'title': 'Assignment 2 : Prove Master\'s Theorem',
          'subtitle': '28 Mar'
        },
        {'title': 'Overeview on growth of functions', 'subtitle': '24 Mar'},
      ]),
  Class(
      name: "Physics 1",
      teacher: "Anil Suthar",
      batch: "2020-24",
      headerImg: "assets/class2.jpeg",
      iconColor: Colors.pink,
      posts: [
        {'title': 'Rigid Body Dynamics', 'subtitle': '21 Mar'}
      ])
];
