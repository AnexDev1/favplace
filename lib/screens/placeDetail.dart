import 'package:flutter/material.dart';

class PlaceDetail extends StatelessWidget {
  const PlaceDetail({required this.placeTitle, super.key});

  final String placeTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(placeTitle),
      ),
    );
  }
}
