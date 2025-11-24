import 'package:flutter/material.dart';

class Ingradient extends StatelessWidget {
  const Ingradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Mahfil biryani'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/mahfil_biryani.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Hyderabadi style mahfil biryani',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Text(
              'Ingredients list',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),

            SizedBox(height: 10),
            IngredientRow(
              icon: '🍗',
              name: 'Chicken (70-80g pieces)',
              quantity: '1 kg',
            ),
            IngredientRow(
              icon: '🧂',
              name: 'Salt (Rock Salt)',
              quantity: '1 Tbsp',
            ),
            IngredientRow(
              icon: '🌶️',
              name: 'Red Chili Powder',
              quantity: '2 Tbsp',
            ),
            IngredientRow(
              icon: '🧄',
              name: 'Ginger-Garlic Paste',
              quantity: '1.5 Tbsp',
            ),
            IngredientRow(
              icon: '🌿',
              name: 'Coriander Leaves',
              quantity: '1/2 cup',
            ),
            IngredientRow(
              icon: '✨',
              name: 'Chota Garam Masala',
              quantity: 'As prepared',
            ),
            IngredientRow(
              icon: '🟡',
              name: 'Saffron (Kesar)',
              quantity: '0.5 gram',
            ),
            IngredientRow(icon: '🍋', name: 'Lemon Juice', quantity: '1 whole'),
            IngredientRow(
              icon: '🧅',
              name: 'Fried Onions',
              quantity: '1 handful',
            ),
            IngredientRow(
              icon: '🥛',
              name: 'Curd (Yogurt)',
              quantity: '200 grams',
            ),
            IngredientRow(
              icon: '🍃',
              name: 'Methi (Fenugreek Leaves)',
              quantity: '1/4 cup',
            ),
            IngredientRow(
              icon: '🌶️',
              name: 'Secret Masala Paste',
              quantity: 'Entire quantity',
            ),
            IngredientRow(icon: '🛢️', name: 'Oil', quantity: '150 ml'),
            IngredientRow(icon: '🧈', name: 'Ghee', quantity: 'Added at end'),
            IngredientRow(
              icon: '💧',
              name: 'Hot Water',
              quantity: '100-150 ml',
            ),
          ],
        ),
      ),
    );

    //fixed button
    
  }
}

// NEW CLASS

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
      padding: const EdgeInsets.symmetric(vertical: 8.0),

      child: Row(
        children: [
          Text(icon, style: TextStyle(fontSize: 24)),

          SizedBox(height: 16),

          Expanded(child: Text(name, style: TextStyle(fontSize: 16))),

          SizedBox(height: 16),

          Text(quantity, style: TextStyle(fontSize: 16, color: Colors.grey)),
        ],
      ),
    );
  }
}
