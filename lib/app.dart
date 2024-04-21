import 'package:ambw_uts_c14210100/bookmark_page.dart';
import 'package:ambw_uts_c14210100/discovery_page.dart';
import 'package:ambw_uts_c14210100/horizontal.dart';
import 'package:ambw_uts_c14210100/mealdeals.dart';
import 'package:ambw_uts_c14210100/popular.dart';
import 'package:ambw_uts_c14210100/profile_page.dart';
import 'package:ambw_uts_c14210100/top_food_page.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int pilihanMenu = 0;

  final List<String> _mpImg = [
    'tuna.jpg',
    'barramundi.jpg',
    'kangaroo.jpg',
    'parmigiana.jpg',
  ];
  final List<String> _mpText = [
    'Tuna Steak',
    'Barramundi',
    'Grilled Kangaroo',
    'Chicken Parmigiana',
  ];
  final List<String> _mpDesc1 = [
    '122 Queen Street',
    '205 Adelaide Street',
    '911 Carrera',
    '918 Spyder',
  ];
  final List<String> _mpDesc2 = [
    'Pacific Ocean',
    'Australia',
    'Australia',
    'North America',
  ];

  final List<String> _mdImg = [
    'lamb.jpg',
    'lamington.jpg',
    'chips.jpg',
    'baconegg.jpg',
    'corn.jpg',
  ];
  final List<String> _mdText = [
    'Lamb Leg Roast',
    'Laminton',
    'Fish and Chips',
    'Bacon and Egg',
    'Chicken and Corn Soup',
  ];
  final List<String> _mdDesc1 = [
    '211 King Street',
    '777 Elizabeth Avenue',
    'Foster Street',
    'Bridge Street',
    '249 Oxford Street',
  ];
  final List<String> _mdDesc2 = [
    'Australia',
    'Australia',
    'United Kingdom',
    'United States',
    'Darlinghurst',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ----------------------------------TITLE----------------------------------
                  const Center(
                    child: Text(
                      "Sydney CBD",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // ----------------------------------SEARCH BAR----------------------------------
                  Container(
                    height: 35.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const Center(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(fontSize: 14.0),
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // ----------------------------------IMAGE HEADER----------------------------------
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'lib/images/oyster.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // ----------------------------------MOST POPULAR----------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Most Popular",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => PopularPage(
                                mpImg: _mpImg,
                                mpText: _mpText,
                                mpDesc1: _mpDesc1,
                                mpDesc2: _mpDesc2,
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          "See More >",
                          style: TextStyle(fontSize: 18.0, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(2.0),
                      itemCount: _mpImg.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return HorizontalView(
                          img: _mpImg[index],
                          title: _mpText[index],
                          desc1: _mpDesc1[index],
                          desc2: _mpDesc2[index],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // ----------------------------------MEAL DEALS----------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Meal Deals",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => MealDealsPage(
                                      mdImg: _mdImg,
                                      mdText: _mdText,
                                      mdDesc1: _mdDesc1,
                                      mdDesc2: _mdDesc2,
                                    )),
                          );
                        },
                        child: const Text(
                          "See More >",
                          style: TextStyle(fontSize: 18.0, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(2.0),
                      itemCount: _mdImg.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return HorizontalView(
                          img: _mdImg[index],
                          title: _mdText[index],
                          desc1: _mdDesc1[index],
                          desc2: _mdDesc2[index],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
          // ----------------------------------BOTTOM NAV----------------------------------
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
        );
      }),
    );
  }
}
