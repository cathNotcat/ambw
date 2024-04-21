import 'package:ambw_uts_c14210100/app.dart';
import 'package:ambw_uts_c14210100/discovery_page.dart';
import 'package:ambw_uts_c14210100/profile_page.dart';
import 'package:ambw_uts_c14210100/top_food_page.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatefulWidget {
  BookmarkPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BookmarkPage> createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  int pilihanMenu = 2;

  final List<String> images = [
    'lamb.jpg',
    'tuna.jpg',
    'barramundi.jpg',
    'lamington.jpg',
  ];

  final List<String> imageNames = [
    'Lamb Leg Roast',
    'Tuna Steak',
    'Barramundi',
    'Lamington',
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
                "Bookmark",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              const Text(
                "Your Curated List of Bookmarked Favorites",
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
                          Row(
                            children: [
                              const Icon(Icons.bookmark,
                                  color: Colors.blue),
                              const SizedBox(
                                  width: 5),
                              Text(
                                imageNames[index],
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DiscoveryPage(),
                  ),
                );
                break;
              case 2:
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
