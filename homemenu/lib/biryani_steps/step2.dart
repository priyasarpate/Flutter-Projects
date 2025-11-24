import 'package:flutter/material.dart';
import 'package:homemenu/biryani_steps/step3.dart';

class Step2 extends StatelessWidget {
  const Step2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAssets = const [
      'assets/1kg_chicken.png',
      'assets/marination.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Step 2')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    height: 400,

                    child: PageView.builder(
                      itemCount: imageAssets.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            decoration: BoxDecoration(
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

                  const SizedBox(height: 16),
                  
                  const Text(
                    'B. First Stage of Chicken Marination',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              const SizedBox(height: 16),
             Center(
              child: const Text(
                'Mix/massage well until all the spices thoroughly coat the chicken.',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),

                  IngredientRow(icon: '🍗', name: 'chicken', quantity: '1 kg'),
                  IngredientRow(icon: '🧂', name: 'salt', quantity: '2 Tbsp'),
                  IngredientRow(icon: '🌶️', name: 'red chili powder', quantity: '1.5 Tbsp'),
                  IngredientRow(icon: '🧄', name: 'ginger-garlic paste', quantity: '1/2 tsp'),
                  IngredientRow(icon: '🌿', name: 'chopped coriander leaves', quantity: '1/2 cup'),
                  IngredientRow(icon: '🔥', name: 'prepared Chota Garam Masala', quantity: 'all'),
                  IngredientRow(icon: '🍋', name: 'lemon', quantity: '1'),

                ],
              ),
            ),
            // --- FIXED BUTTON AREA ---
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Step3()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('Step 3'),
                ),
              ),
            ),
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

  const IngredientRow ({
    super.key,
    required this.icon,
    required this.name,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(icon, style: TextStyle(fontSize: 24),),
      
          const SizedBox(height: 16),
      
          Expanded(child: Text(name, style: TextStyle(fontSize: 16),)),
      
          const SizedBox(height: 16),
      
          Text(quantity, style: TextStyle(fontSize: 16),)
      
        ],
      ),
    );
  }

}