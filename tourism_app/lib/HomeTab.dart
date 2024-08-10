import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  final List<Map<String, String>> featuredPlaces = [
    {'name': 'Victoria Building', 'address': '9585 SW Washington Square Rd Metzger'},
    // Add more featured places
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: featuredPlaces.length,
      itemBuilder: (context, index) {
        final place = featuredPlaces[index];
        return Card(
          child: ListTile(
            leading: Image.asset('assets/images/placeholder.jpg'), // Replace with actual images
            title: Text(place['name']!),
            subtitle: Text(place['address']!),
          ),
        );
      },
    );
  }
}
