import 'package:favplace/screens/newPlace.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> placeList = ['jimma', 'agaro'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your places'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const NewPlace(),
                  ),
                );
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
          itemCount: placeList.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text(
                placeList[index],
                style: const TextStyle(color: Colors.black),
              ),
            );
          }),
    );
  }
}
