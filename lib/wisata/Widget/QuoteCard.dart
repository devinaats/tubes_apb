import 'package:flutter/material.dart';

Widget QuoteCard() => Card(
  child: Padding(
    padding: EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '"Akhirnya debug kelar juga, waktunya hiking bosque."',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 12),
        Text(
          'Athalla',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  ),
);
