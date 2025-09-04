import 'package:flutter/material.dart';

void main() => runApp(const tugas1());

class tugas1 extends StatelessWidget {
  const tugas1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: const MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
          height: 240,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        titleSection,
        buttonSection,
        textSection,
      ],
    );
  }
}

Widget titleSection = Padding(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Oeschinen Lake Campground',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      const Icon(
        Icons.star,
        color: Colors.red,
      ),
      const SizedBox(width: 4),
      const Text('41'),
    ],
  ),
);

Widget buttonSection = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 32),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(Icons.call, 'CALL'),
      _buildButtonColumn(Icons.near_me, 'ROUTE'),
      _buildButtonColumn(Icons.share, 'SHARE'),
    ],
  ),
);

Column _buildButtonColumn(IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: Colors.purple),
      const SizedBox(height: 8),
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.purple,
        ),
      ),
    ],
  );
}

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text(
    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. '
    'Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. '
    'A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, '
    'leads you to the lake, which warms to 20 degrees Celsius in the summer. '
    'Activities enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
  ),
);