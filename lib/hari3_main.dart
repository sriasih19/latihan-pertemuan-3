import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16),
          child: OverflowTextWidget(),
        ),
      ),
    );
  }
}


class OverflowTextWidget extends StatelessWidget {
  const OverflowTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(),
        ),
        child: const Text(
          'Flutter adalah framework UI dari Google '
          'yang dapat digunakan untuk membuat aplikasi '
          'Android, iOS, Web dan Desktop.',
          maxLines: 3, // diubah dari 2 ke 3
          overflow: TextOverflow.clip, // diubah dari ellipsis ke clip
        ),
      ),
    );
  }
}