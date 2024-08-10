import 'package:flutter/material.dart';

class ListTab extends StatelessWidget {
  final List<Map<String, String>> places = [
    {'name': 'The Cathedral', 'address': 'Portland Contea di Multnomah OR'},
    {'name': 'Oregon Zoo', 'address': '4001 Southwest Canyon Road Southwest Portland'},
    {'name': 'Palace of the Countess Shinisnana', 'address': 'NW Cornell Rd Portland Multnomah County'},
    {'name': 'Victoria Building', 'address': 'NW 29th Ave Forest Park Portland'},
    {'name': 'Lan Su Chinese Garden', 'address': 'SE Morrison St Southeast Portland'},
    {'name': 'Audubon Society of Portland Sanctuary', 'address': 'NW Cornell Rd Portland'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) {
        final place = places[index];
        return ListTile(
          leading: Image.asset('assets/images/placeholder.jpg'), // Replace with actual images
          title: Text(place['name']!),
          subtitle: Text(place['address']!),
        );
      },
    );
  }
}
