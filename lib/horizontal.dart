import 'package:flutter/material.dart';

class HorizontalView extends StatelessWidget {
  final String img;
  final String title;
  final String desc1;
  final String desc2;

  const HorizontalView(
      {required this.img,
      required this.title,
      required this.desc1,
      required this.desc2,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        height: 150,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('lib/images/$img'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    desc1,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                  Text(
                    desc2,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 139, 139, 139)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
