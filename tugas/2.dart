import 'package:flutter/material.dart';

class PavlovaPage extends StatelessWidget {
  const PavlovaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Strawberry Pavlova'),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
        foregroundColor: Colors.black87,
        elevation: 0,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(24),
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Title
                const Text(
                  'Strawberry Pavlova',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 12),
                // Description
                const Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                  'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 18),
                // Row: Stars & Reviews
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: List.generate(
                        5,
                        (index) => const Icon(Icons.star, color: Colors.amber, size: 20),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      '170 Reviews',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                // Row: Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInfoColumn(Icons.kitchen, 'PREP:', '25 min'),
                    _buildInfoColumn(Icons.timer, 'COOK:', '1 hr'),
                    _buildInfoColumn(Icons.restaurant, 'FEEDS:', '4-6'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.green[400], size: 28),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}