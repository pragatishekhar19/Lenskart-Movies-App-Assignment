import 'package:flutter/material.dart';

class CircularRating extends StatelessWidget {
  final double rating; // out of 10

  const CircularRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircularProgressIndicator(
            value: rating / 10,
            strokeWidth: 6,
            backgroundColor: Colors.grey[300],
            color: Colors.indigo,
          ),
          Center(
            child: Text(
              '${rating.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
