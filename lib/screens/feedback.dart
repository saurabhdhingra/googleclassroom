import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: Colors.grey.shade700,
            size: 35,
          ),
        ),
        title: const Text(
          'Send Feedback',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFF596571),
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.send, color: Colors.grey.shade700),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Not connected to Email service.'),
                ));
              })
        ],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Divider(
                height: 2,
                thickness: 2,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    const Text(
                      'From:',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                    const Text(
                      'youremail@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.38),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 24,
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 2,
                thickness: 2,
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 8, 5, 5),
                child: Text(
                  'Have feedback? We\'d love to hear it,but please don\'t share sensitive information. Have questions or legal concerns? Visit the Help Centre or contact Support. ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF697883),
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.4),
              Container(
                width: MediaQuery.of(context).size.width * 0.96,
                height: MediaQuery.of(context).size.height * 0.09,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: const Color(0xFFA2B1BA),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Icon(
                      Icons.check_circle,
                      color: Colors.blue[500],
                      size: 24,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Screenshot',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Highlight or hide info',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.blue[500],
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.32),
                    Image.asset(
                      'assets/ss1.PNG',
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Container(
                width: MediaQuery.of(context).size.width * 0.96,
                height: MediaQuery.of(context).size.height * 0.09,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: const Color(0xFFA2B1BA),
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Icon(
                      Icons.check_circle,
                      color: Colors.blue[500],
                      size: 24,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Screenshot',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Highlight or hide info',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.blue[500],
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.32),
                    Image.asset(
                      'assets/ss2.jpeg',
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 8, 5, 5),
                child: RichText(
                  text: TextSpan(
                    text: 'Some ',
                    style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w300),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'account and system information ',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                          text:
                              'may be sent to Google. We will use it to fix problems and improve our services, subject to our '),
                      TextSpan(
                        text: 'Privacy policy ',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(text: 'and '),
                      TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                          text:
                              '. We may email you for more information or updates. Go to '),
                      TextSpan(
                        text: 'Legal Help',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                          text:
                              ' to ask for content cahnges for legal reasos.'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
