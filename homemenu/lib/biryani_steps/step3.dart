import 'package:flutter/material.dart';
import './step4.dart';

class Step3 extends StatelessWidget {
  const Step3({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAssets = const [
      'assets/secreat_sauce.jpg',
      'assets/boiling_sauce.jpg',
      'assets/two_wistles.jpg',
      'assets/fined_sauce.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Step 3')),

      // The body starts with a Column to stack the scrollable list and the fixed button
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // 1. SCROLLABLE CONTENT AREA: Wrapped in Expanded
            Expanded(
              // The ListView contains ALL content that needs to scroll
              child: ListView(
                children: <Widget>[
                  // Image Scroll Container
                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: PageView.builder(
                      itemCount: imageAssets.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          // Use horizontal padding for spacing between pages
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage(imageAssets[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  // 2. Headings and Instructions (NOW INSIDE LISTVIEW)
                  const SizedBox(height: 20),
                  const Text(
                    'C. Prepare the Secret Masala Paste',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),

                  const SizedBox(height: 10),
                  const Text(
                    'Cool the boiled mixture completely, then grind it into a very fine paste',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),

                  // 3. Ingredient List (NOW INSIDE LISTVIEW)
                  Column(
                    children: [
                      const IngredientRow(
                        icon: '🌿',
                        name: 'coriander',
                        quantity: 'bunch',
                      ), // 🌿 for Fresh Herbs/Leaves
                      const IngredientRow(
                        icon: '🌶️',
                        name: 'green chillies',
                        quantity: '5',
                      ), // 🌶️ for Chili Pepper
                      const IngredientRow(
                        icon: '🫚',
                        name: 'ginger',
                        quantity: 'one piece',
                      ), // 🫚 for Ginger Root
                      const IngredientRow(
                        icon: '🧄',
                        name: 'garlic',
                        quantity: '5',
                      ), // 🧄 for Garlic
                      const IngredientRow(
                        icon: '🍅',
                        name: 'tomato',
                        quantity: '1',
                      ), // 🍅 for Tomato
                      const IngredientRow(
                        icon: '🥜',
                        name: 'cashews',
                        quantity: '10',
                      ), // 🥜 for Nuts/Peanut (Best close match for cashews)
                      const IngredientRow(
                        icon: '🔥',
                        name: 'whole spices',
                        quantity: '2tbsp',
                      ), // 🔥 or ✨ for General Spices
                      const IngredientRow(
                        icon: '🍃',
                        name: 'mint',
                        quantity: '1 cup',
                      ), // 🍃 for Leaf/Mint
                      const IngredientRow(
                        icon: '🥬',
                        name: 'fenugreek leaves',
                        quantity: '3 cup',
                      ), // 🥬 for Leafy Greens
                      const IngredientRow(
                        icon: '🌹',
                        name: 'rose petals',
                        quantity: '5g',
                      ), // 🌹 for Rose
                      const IngredientRow(
                        icon: '🟠',
                        name: 'turmeric',
                        quantity: '0.5 tbsp',
                      ), // 🟠 for Orange/Yellow Powder
                      const IngredientRow(
                        icon: '⚫',
                        name: 'soy sauce',
                        quantity: '5g',
                      ), // ⚫ for Dark Liquid/Color
                      const IngredientRow(
                        icon: '🥄',
                        name: 'oil',
                        quantity: '4tbsp',
                      ), // 🥄 for Spoon/Measure or 🟡 for Oil
                      const IngredientRow(
                        icon: '💧',
                        name: 'water',
                        quantity: '4 cup',
                      ), // 💧 for Drop/Water
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ), // Extra space at the bottom of the list for visual balance
                ],
              ),
            ),

            // 4. FIXED BUTTON AREA: Placed outside Expanded
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).padding.bottom + 16,
                top: 16,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Step4()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('Step 4'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// --- IngredientRow Widget ---

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
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(icon, style: const TextStyle(fontSize: 24)),
          const SizedBox(width: 10),
          Expanded(child: Text(name, style: const TextStyle(fontSize: 16))),
          const SizedBox(width: 10),
          Text(quantity, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
