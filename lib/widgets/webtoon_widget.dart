import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';
import 'package:toonflix/widgets/webtoon_image.dart';

class Webtoon extends StatelessWidget {
  final String thumb, title, id;

  const Webtoon(
      {super.key, required this.thumb, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              thumb: thumb,
              title: title,
              id: id,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          WebtoonImage(
            thumb: thumb,
            id: id,
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
