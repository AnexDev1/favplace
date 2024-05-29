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
        title: Text('Your places'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: ListView.builder(
          itemCount: placeList.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text(
                placeList[index],
                style: TextStyle(color: Colors.black),
              ),
            );
          }),
    );
  }
}
