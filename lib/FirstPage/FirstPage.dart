import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: <Widget>[
              Container(
                  color: Color.fromARGB(255, 244, 245, 246),
                  child: Column(
                    children: [
                      textField(),
                      SizedBox(
                        height: 10,
                      ),
                      Button(),
                      SizedBox(height: 20),
                      Container(
                        child: Heading("Programs For You"),
                      ),
                      Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            BuildCard(
                                "A complete guide for your new born baby",
                                "16 lessons",
                                "LIFESTYLE",
                                "assets/Frame122.png",
                                false),
                            SizedBox(
                              width: 10,
                            ),
                            BuildCard(
                                "Understanding Human behaviour nature",
                                "18 lessons",
                                "PAYDUTY",
                                "assets/Frame122.png",
                                false),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Heading("Events and Experience"),
                      ),
                      Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            BuildCard(
                                "Understanding Human behaviour nature",
                                "13 Feb, Sunday",
                                "BABYCARE",
                                "assets/s.png",
                                false),
                            SizedBox(
                              width: 10,
                            ),
                            BuildCard(
                                "Understanding Human behaviour nature",
                                "13 Feb, Sunday",
                                "BABYCARE",
                                "assets/s.png",
                                false),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: Heading("Lessons for you"),
                      ),
                      Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            BuildCard(
                                "Understanding Human behaviour nature",
                                "13 Feb, Sunday",
                                "BABYCARE",
                                "assets/s.png",
                                true),
                            SizedBox(
                              width: 10,
                            ),
                            BuildCard(
                                "Understanding Human behaviour nature",
                                "13 Feb, Sunday",
                                "BABYCARE",
                                "assets/s.png",
                                true),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    );
  }
}

Widget BuildCard(String Description, String Lessons, String sideHeading,
    String imgLoc, bool val) {
  return Container(
    height: 250,
    padding: EdgeInsets.all(10),
    child: Material(
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              imgLoc,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              width: 200,
              child: Text(sideHeading,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 12))),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: Text(Description,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                  width: 200,
                  child: ListTile(
                      leading: Text(
                        Lessons,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                      ),
                      trailing: val
                          ? Icon(Icons.shopping_basket)
                          : CreateButton("Book", true))),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget Heading(String s) {
  return Container(
      child: ListTile(
    leading:
        Text(s, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
    trailing: Text(
      'View all ->',
      style: TextStyle(color: Colors.grey),
    ),
  ));
}

Widget Button() {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CreateButton("Programs", false),
            CreateButton("Get Help", false),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CreateButton("Learn", false),
            CreateButton("DD Tracker", false),
          ],
        )
      ],
    ),
  );
}

Widget CreateButton(String text, bool val) {
  return Container(
    child: SizedBox(
      width: val ? 66 : 120,
      height: val ? 25 : 40,
      child: OutlinedButton(
        onPressed: null,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 1.0,
            color: Colors.blue,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    ),
  );
}

Widget textField() {
  return Container(
    padding: EdgeInsets.only(top: 15, left: 0, right: 200, bottom: 10),
    margin: EdgeInsets.only(left: 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Hello Priya!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.start,
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          'What do you wanna learn today?',
          style: TextStyle(
              fontSize: 10, color: Colors.grey, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}

class _buildAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 244, 245, 246),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            Container(
                child: Row(
              children: [
                Icon(
                  Icons.message_outlined,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                Icon(Icons.notifications_none, color: Colors.grey),
              ],
            )),
          ],
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(30);
}
