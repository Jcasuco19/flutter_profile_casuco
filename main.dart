import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Developer Profile"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.green[50],
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // 👈 CENTER EVERYTHING
                children: [

                  // Profile Icon
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.green[100],
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.green,
                    ),
                  ),

                  SizedBox(height: 20),

                  // Name
                  Text(
                    "Jefferson V. Casuco",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800],
                    ),
                  ),

                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 15),

                  // Section
                  infoRow(Icons.school, "BSIT-3A"),

                  SizedBox(height: 12),

                  // Age
                  infoRow(Icons.cake, "20 years old"),

                  SizedBox(height: 20),

                  // Hobbies Title
                  Text(
                    "Hobbies",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.green[700],
                    ),
                  ),

                  SizedBox(height: 10),

                  // Hobbies List
                  hobbyItem(Icons.menu_book, "Reading Manga"),
                  hobbyItem(Icons.sports_esports, "Gaming"),
                  hobbyItem(Icons.movie, "Watching Movies"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Centered Row
  Widget infoRow(IconData icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // 👈 CENTER ROW CONTENT
      children: [
        Icon(icon, color: Colors.green),
        SizedBox(width: 10),
        Text(text),
      ],
    );
  }

  // Centered Hobbies
  Widget hobbyItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 👈 CENTER
        children: [
          Icon(icon, color: Colors.green),
          SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}