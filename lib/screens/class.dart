import 'package:flutter/material.dart';
import 'package:googleclassroom/widgets/post.dart';
import '../data.dart';
import '../widgets/drawer.dart';
import 'home.dart';

class ClassPage extends StatefulWidget {
  final int classNo;
  const ClassPage({Key? key, required this.classNo}) : super(key: key);

  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
              color: Colors.grey[700],
              onPressed: () {},
              icon: const Icon(Icons.info_outline)),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      drawer: CustomDrawer(
        pageName: 'class',
        classNo: widget.classNo,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.16,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        classes[widget.classNo].headerImg,
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 30,
                        left: 10,
                        child: Text(
                          classes[widget.classNo].name,
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          classes[widget.classNo].batch,
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(1.0, 1.0),
                        blurRadius: 0.2,
                        spreadRadius: 0.2,
                      ),
                    ],
                    color: const Color(0xFFF4F4F4),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.account_circle,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Announce something to your class .....',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: classes[widget.classNo].posts.length,
                    itemBuilder: (context, index) => PostWidget(
                        title: classes[widget.classNo].posts[index]['title'] ??
                            'New Assignment',
                        subtitle: classes[widget.classNo].posts[index]
                                ['subtitle'] ??
                            'Posted 28 Mar')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
