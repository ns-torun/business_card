import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.1, 0.4, 0.7, 0.9],
                colors: [
                  Colors.purple.shade300,
                  Colors.purple.shade400,
                  Colors.blue.shade700,
                  Colors.blue.shade400,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/pic.png'),
                ),
                Text(
                  'Nazmus Salehin',
                  style: TextStyle(
                      fontFamily: 'MarckScript-Regular',
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'WEB & APP DESIGNER',
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      letterSpacing: 2.5,
                      fontSize: 15),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      '+880 172 2884 184',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text(
                      'torun1412@gmail.com',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
