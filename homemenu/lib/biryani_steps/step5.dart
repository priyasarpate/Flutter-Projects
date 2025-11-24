import 'package:flutter/material.dart';
import './step6.dart';

class Step5 extends StatelessWidget {
  const Step5({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAssets = const [
      'assets/water_boil.png', 
      'assets/cooking_rice.jpg',
      'assets/layring.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Step 5')),
       body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget> [
                  SizedBox(
                    width: double.infinity,
                    height: 300,
                    child: PageView.builder(
                      itemCount: imageAssets.length,
                      itemBuilder: (context, index) {
                        return Padding(
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
                  const SizedBox(height: 20),
                  
                  const Text(
                    'E. Cooking the Rice & Layering',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),

                  const SizedBox(height: 10),
                  const Text(
                    'This stage involves par-boiling the rice and preparing the base for layering.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),

             Column(
                children: [
                  const IngredientRow(icon: '🍲', name: 'Add 100-150 ml of hot water to the chicken in the main pot and arrange the leg pieces towards the pot edges.'),      
                  const IngredientRow(icon: '💧', name: 'In a separate pot, boil 3 liters of water.'),     
                  const IngredientRow(icon: '🧂', name: 'Add 6 Tbsp of salt, the rice spices (crushed cardamoms, cloves, cinnamon, Shahjeera, mint, coriander), 4 Tbsp of oil, and the juice of one lemon.'),   
                  const IngredientRow(icon: '🍚', name: 'Once the water boils, add the soaked rice.'),              
                  const IngredientRow(icon: '⏱️', name: 'Cook the rice until it is 80% done (slightly firm).'),              
                  const IngredientRow(icon: '🍚', name: 'Strain the rice and gently spread it evenly over the marinated chicken in the pot.'),           
                ],
              ),
                  
                  const SizedBox(height: 10), 
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 16.0), 
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Step6()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('Step 6'),
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

  const IngredientRow({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          Text(icon, style: const TextStyle(fontSize: 24)),
          const SizedBox(width: 10), 
          Flexible(
            child: Text(
              name, 
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}