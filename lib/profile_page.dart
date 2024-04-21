import 'package:ambw_uts_c14210100/app.dart';
import 'package:ambw_uts_c14210100/bookmark_page.dart';
import 'package:ambw_uts_c14210100/discovery_page.dart';
import 'package:ambw_uts_c14210100/top_food_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int pilihanMenu = 4;

  final List<IconData> iconss = [
    Icons.text_format,
    Icons.password,
    Icons.assignment_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    List<String> items = ['Catherine Rosalind', 'C14210100', 'UTS AMBW'];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
          child: Center(
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "Profile",
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
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
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 16.0,
                          ),
                          child: Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              // color: Colors.grey[300],
                              // borderRadius: BorderRadius.circular(10),
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Icon(
                                    iconss[index],
                                    color: Colors.blue,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    items[index],
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
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
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TopFoodPage(),
                ),
              );
              break;
            case 4:
              break;
          }
        },
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
