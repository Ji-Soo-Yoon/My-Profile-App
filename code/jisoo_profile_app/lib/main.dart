import 'package:flutter/material.dart';
import 'hobbies_screen.dart';
import 'pics_screen.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'My Profile App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.blue,
      iconTheme: const IconThemeData(color: Colors.black),
    ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.palette, color: Colors.black),
              title: const Text('My Hobbies'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HobbiesScreen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo, color: Colors.black),
              title: const Text('Favorite Pics'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PicsScreen()));
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/Jisoo.jpg'),
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(height: 20),
            const Text(
              'Jisoo Yoon',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flutter Beginner & Student',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on, color: Colors.red),
                SizedBox(width: 5),
                Text('Carrollton, GA, USA'),
                SizedBox(width: 20),
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 5),
                Text('jyoon1@westga.edu'),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HobbiesScreen()));
              },
              child: const Text('My hobbies'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const PicsScreen()));
              },
              child: const Text('My favorite pics'),
            ),
          ],
        ),
      ),
    );
  }
}
