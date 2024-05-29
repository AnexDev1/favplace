import 'package:favplace/screens/newPlace.dart';
import 'package:favplace/screens/placeDetail.dart';
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
              onPressed: () async {
                final placeName = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => NewPlace(),
                  ),
                );
                setState(() {
                  placeList.add(placeName);
                });
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
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PlaceDetail(
                          placeTitle: placeList[index],
                        )));
              },
            );
          }),
    );
  }
}
