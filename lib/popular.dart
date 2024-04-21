import 'package:flutter/material.dart';

class PopularPage extends StatelessWidget {
  final List<String> mpImg;
  final List<String> mpText;
  final List<String> mpDesc1;
  final List<String> mpDesc2;

  PopularPage({
    required this.mpImg,
    required this.mpText,
    required this.mpDesc1,
    required this.mpDesc2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Most Popular'),
      ),
      body: ListView.builder(
        itemCount: mpImg.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
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
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        'lib/images/${mpImg[index]}',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      mpText[index],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      mpDesc1[index],
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                    Text(
                      mpDesc2[index],
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                    const SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
