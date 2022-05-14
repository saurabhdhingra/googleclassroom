import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const PostWidget({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(7, 2, 5, 5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.14,
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(7),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: const Offset(1.0, 1.0),
              blurRadius: 0.2,
              spreadRadius: 0.2,
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(width: 10),
                    const CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.blueAccent,
                      child: Icon(
                        Icons.list_alt,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          title,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          subtitle,
                          textAlign: TextAlign.start,
                          style: const TextStyle(),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                  color: Colors.grey[200],
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(width: 10),
                    Text(
                      'Add class comment',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            const Positioned(
              right: 8,
              top: 5,
              child: Icon(
                Icons.keyboard_control,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
