import 'package:favplace/models/place_model.dart';
import 'package:favplace/providers/user_places.dart';
import 'package:favplace/screens/new_place.dart';
import 'package:favplace/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(UserPlacesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your places'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => NewPlace(),
                  ),
                );
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: PlacesList(userPlaces),
    );
  }
}
