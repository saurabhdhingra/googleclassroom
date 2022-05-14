import 'package:flutter/material.dart';
import 'package:googleclassroom/screens/class.dart';

class ClassWidget extends StatefulWidget {
  final int classNo;
  final String name;
  final String teacher;
  final String batch;
  final String headerimage;

  const ClassWidget({
    Key? key,
    required this.name,
    required this.teacher,
    required this.batch,
    required this.headerimage,
    required this.classNo,
  }) : super(key: key);

  @override
  State<ClassWidget> createState() => _ClassWidgetState();
}

class _ClassWidgetState extends State<ClassWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(6, 0, 6, 6),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClassPage(classNo: widget.classNo),
            ),
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.16,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  widget.headerimage,
                ),
                fit: BoxFit.cover),
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 8,
                left: 8,
                child: Text(
                  widget.name,
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Positioned(
                top: 30,
                left: 8,
                child: Text(
                  widget.batch,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Positioned(
                bottom: 8,
                left: 8,
                child: Text(
                  widget.teacher,
                  style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
