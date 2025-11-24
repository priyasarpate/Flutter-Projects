import 'package:flutter/material.dart';

class Step1 extends StatelessWidget {
  const Step1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Step 1')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.amber,
                image: const DecorationImage(
                  image: AssetImage('assets/chota_masala.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'A. Prepare the Chota Garam Masala:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
            ),

            const SizedBox(height: 16),

            Center(
              child: const Text(
                'A Rough Powder',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),

            IngredientRow(
              icon: '🫘',
              name: 'Grind the  cardamoms',
              quantity: '8',
            ),

            IngredientRow(icon: '🌰', name: 'cloves', quantity: '4'),
            IngredientRow(icon: '🪵', name: 'cinnamon stick', quantity: '2'),

//fixed button


          ],
        ),
      ),
    );
  }
}

class IngredientRow extends StatelessWidget {
  final String icon;
  final String name;
  final String quantity;

  const IngredientRow({
    super.key,
    required this.icon,
    required this.name,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(icon, style: TextStyle(fontSize: 24)),

          const SizedBox(height: 16),

          Expanded(child: Text(name, style: TextStyle(fontSize: 16))),

          const SizedBox(height: 16),

          Text(quantity, style: TextStyle(fontSize: 16, color: Colors.grey)),
        ],
      ),
    );
  }
}
