import 'package:flutter/material.dart';

class WebtoonImage extends StatelessWidget {
  final String thumb;

  const WebtoonImage({super.key, required this.thumb});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
        BoxShadow(
          blurRadius: 20,
          offset: const Offset(10, 10),
          color: Colors.black.withOpacity(0.5),
        )
      ]),
      clipBehavior: Clip.hardEdge,
      child: Image.network(thumb),
    );
  }
}
