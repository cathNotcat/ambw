import 'package:ambw_uts_c14210100/app.dart';
import 'package:ambw_uts_c14210100/bookmark_page.dart';
import 'package:ambw_uts_c14210100/discovery_page.dart';
import 'package:ambw_uts_c14210100/profile_page.dart';
import 'package:flutter/material.dart';

class TopFoodPage extends StatefulWidget {
  TopFoodPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TopFoodPage> createState() => _TopFoodPageState();
}

class _TopFoodPageState extends State<TopFoodPage> {
  int pilihanMenu = 3;

  final List<String> images = [
    'kangaroo.jpg',
    'lamb.jpg',
    'lamington.jpg',
  ];

  final List<String> imageNames = [
    '1. Grilled Kangaroo',
    '2. Lamb Leg Roast',
    '3. Lamington',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
          child: Column(
            children: [
              const Text(
                "Top Food",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Indulge in Sydney's Top-Rated Culinary Delights",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: ListView.builder(
                  itemCount: images.length,
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
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                imageNames[index],
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                                child: Image.asset(
                                  'lib/images/${images[index]}',
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: "Discovery", icon: Icon(Icons.location_on_outlined)),
            BottomNavigationBarItem(
                label: "Bookmark", icon: Icon(Icons.bookmark_outline)),
            BottomNavigationBarItem(
                label: "Top Food", icon: Icon(Icons.star_border_outlined)),
            BottomNavigationBarItem(
                label: "Profile", icon: Icon(Icons.person_2_outlined)),
          ],
          currentIndex: pilihanMenu,
          onTap: (int index) {
            setState(() {
              pilihanMenu = index;
            });
            debugPrint(index.toString());
            switch (index) {
              case 0:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MainApp(),
                  ),
                );
                break;
              case 1:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DiscoveryPage(),
                  ),
                );
                break;
              case 2:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BookmarkPage(),
                  ),
                );
                break;
              case 3:
                break;
              case 4:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
                break;
            }
          },
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
