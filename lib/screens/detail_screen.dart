import 'package:flutter/material.dart';
import 'package:toonflix/widgets/webtoon_image.dart';

class DetailScreen extends StatelessWidget {
  final String thumb, title, id;

  const DetailScreen(
      {super.key, required this.thumb, required this.title, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WebtoonImage(
                thumb: thumb,
                id: id,
              ),
            ],
          )
        ],
      ),
    );
  }
}
