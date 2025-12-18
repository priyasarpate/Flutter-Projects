import 'package:flutter/material.dart';
import '../main.dart';

class Step6 extends StatelessWidget {
  const Step6({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAssets = const [
      'assets/cooking.jpg', 
      'assets/dum.jpg',
      'assets/done.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Final Step')),
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
                    'F. Dum Process',
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
                  const IngredientRow(icon: '🌿', name: 'Garnish the top of the rice with chopped coriander leaves.'),      // 🌿 for Herb/Coriander
                  const IngredientRow(icon: '🥄', name: 'Mix any remaining Secret Masala gravy/residue (from the cooker) with some of the rice cooking water and sprinkle it over the rice (or sprinkle hot water mixed with oil/ghee)'),     // 🥄 for Mixing/Measuring liquid
                  const IngredientRow(icon: '🧈', name: 'Drizzle 2 Tbsp of ghee over the top layer of rice'),   // 🧈 for Ghee/Butter
                  const IngredientRow(icon: '🛡️', name: 'Seal the pot tightly with silver foil'),              // 🛡️ for Sealing/Protection
                  const IngredientRow(icon: '🔥', name: 'Cook on high flame for exactly 5 minutes.'),              // 🔥 for High Heat/Flame
                  const IngredientRow(icon: '🧱', name: 'Place a heavy tawa/pan on the stove, set the biryani pot on top of it, and cook on dum for 20 minutes '),          
                ],
              ),
                  
                  const SizedBox(height: 10), 
                ],
              ),
            ),
            
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
                      MaterialPageRoute(builder: (context) => const RecipeBookApp()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('finish'),
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