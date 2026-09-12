import 'package:flutter/material.dart';

class PicsScreen extends StatelessWidget {
  const PicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/1.One.png',
      'assets/2.Two.png',
      'assets/3.Three.png',
      'assets/4.Four.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite Pics',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(0),
              ),
            );
          },
        ),
      ),
    );
  }
}
