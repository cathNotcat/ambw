import 'package:ambw_uts_c14210100/app.dart';
import 'package:ambw_uts_c14210100/bookmark_page.dart';
import 'package:ambw_uts_c14210100/profile_page.dart';
import 'package:ambw_uts_c14210100/top_food_page.dart';
import 'package:flutter/material.dart';

class DiscoveryPage extends StatefulWidget {
  DiscoveryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  int pilihanMenu = 1;

  final List<String> images = [
    'tuna.jpg',
    'barramundi.jpg',
    'kangaroo.jpg',
    'parmigiana.jpg',
    'lamb.jpg',
    'lamington.jpg',
    'chips.jpg',
    'baconegg.jpg',
    'corn.jpg',
  ];

  final List<String> imageNames = [
    'Tuna Steak',
    'Barramundi',
    'Grilled Kangaroo',
    'Chicken Parmigiana',
    'Lamb Leg Roast',
    'Lamington',
    'Fish and Chips',
    'Bacon and Egg',
    'Chicken and Corn Soup',
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
                "Discovery",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Explore the Culinary Wonders of Sydney!",
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 20.0),
              Expanded(
                child: GridView.builder(
                  itemCount: images.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'lib/images/${images[index]}',
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            imageNames[index],
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
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
                break;
              case 2:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BookmarkPage(),
                  ),
                );
                break;
              case 3:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => TopFoodPage(),
                  ),
                );
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
