import 'package:flutter/material.dart';

class MealDealsPage extends StatelessWidget {
  final List<String> mdImg;
  final List<String> mdText;
  final List<String> mdDesc1;
  final List<String> mdDesc2;

  const MealDealsPage(
      {required this.mdImg,
      required this.mdText,
      required this.mdDesc1,
      required this.mdDesc2,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal Deals'),
      ),
      body: ListView.builder(
        itemCount: mdImg.length,
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
                        'lib/images/${mdImg[index]}',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      mdText[index],
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      mdDesc1[index],
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 139, 139, 139)),
                    ),
                    Text(
                      mdDesc2[index],
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
