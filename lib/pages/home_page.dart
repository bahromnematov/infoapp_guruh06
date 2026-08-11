import 'package:flutter/material.dart';
import 'package:infoapp_guruh06/service/infoimages.dart';
import 'package:infoapp_guruh06/service/infotext.dart';

import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue.shade900,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu, size: 35, color: Colors.white),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Text(
            "Dasturlash tillari",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share, color: Colors.white, size: 30),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, color: Colors.white, size: 30),
            ),
          ],
        ),
        body: ListView(
          children: [
            itemLanguage(
              "assets/img.png",
              "C++",
              "C++ 1991 yilda yaratilgan",
              "assets/c.json",
              Infotext.texts[0],
              Infoimages.images[0],
            ),
            itemLanguage(
              "assets/img_1.png",
              "Flutter",
              "Flutter 2017 yilda yaratilgan",
              "assets/flutter.json",
              Infotext.texts[1],
              Infoimages.images[1],
            ),
            itemLanguage(
              "assets/img_2.png",
              "Python",
              "Python 1991 yilda yaratilgan",
              "assets/python.json",
              Infotext.texts[2],
              Infoimages.images[2],
            ),
            itemLanguage(
              "assets/img_3.png",
              "Java",
              "Java 1999 yilda yaratilgan",
              "assets/java.json",
              Infotext.texts[3],
              Infoimages.images[3],
            ),
            itemLanguage(
              "assets/img_4.png",
              "Objectiv C",
              "Objectiv C 2000 yilda yaratilgan",
              "assets/objectivc.json",
              Infotext.texts[4],
              Infoimages.images[4],
            ),
          ],
        ),

        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                height: 270,
                color: Colors.blue.shade900,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/img_5.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Mark Zucenberk",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Mobile Developer",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.home),
                              title: Text("Home"),
                              onTap: () {},
                            ),
                            ListTile(
                              onTap: () {},
                              leading: Icon(Icons.person),
                              title: Text("Profile"),
                            ),
                            ListTile(
                              leading: Icon(Icons.settings),
                              title: Text("Settings"),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(Icons.lock),
                              title: Text("Password"),
                              trailing: Icon(Icons.remove_red_eye),
                              onTap: () {},
                            ),
                            ListTile(
                              leading: Icon(Icons.flag),
                              title: Text("Language"),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Sign Out"),
                        trailing: Icon(Icons.logout, color: Colors.red),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemLanguage(
    String image,
    String name,
    String about,
    String lottie,
    String info,
    List<String> images,
  ) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 5, color: Colors.yellow),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade700,
                  ),
                ),
                Text(
                  about,
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 12),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) {
                    return DetailsPage(
                      name: name,
                      lottie: lottie,
                      info: info,
                      images: images,
                    );
                  },
                ),
              );
            },
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue.shade700,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
