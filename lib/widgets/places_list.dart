import 'package:favplace/models/place_model.dart';
import 'package:favplace/screens/places_detail.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatefulWidget {
  const PlacesList(
    this.places, {
    super.key,
  });
  final List<Place> places;

  @override
  State<PlacesList> createState() => _PlacesListState();
}

class _PlacesListState extends State<PlacesList> {
  @override
  Widget build(BuildContext context) {
    if (widget.places.isEmpty) {
      return Center(
        child: Text(
          'No Places added',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Theme.of(context).colorScheme.primary),
        ),
      );
    }
    return ListView.builder(
        itemCount: widget.places.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(
              widget.places[index].title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlaceDetail(
                        place: widget.places[index],
                      )));
            },
          );
        });
  }
}
