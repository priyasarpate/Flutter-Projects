import 'package:flutter/material.dart';
import './step5.dart';

class Step4 extends StatelessWidget {
  const Step4({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAssets = const [
      'assets/soked_rice.png', 
      'assets/frying_onion.jpg',
      'assets/main_marination.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Step 4')),
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
                    'D. Final Marination & Rice Soaking',
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

             Column(
                children: [
                  const IngredientRow(icon: '🍚', name: 'Soak 1 kg of Basmati Rice for a minimum of 1 hour (up to 3 hours is fine)', ),      
                  const IngredientRow(icon: '🧅', name: 'To the 20-minute rested chicken, add the saffron, the juice of one lemon, a handful of fried onions, and 200g of curd',),     
                  const IngredientRow(icon: '🌿', name: 'Add the entire Secret Masala Paste to the chicken', ),   
                  const IngredientRow(icon: '🍗', name: 'Massage the chicken well to incorporate the cooked fenugreek aroma ', ),              
                  const IngredientRow(icon: '🥄', name: 'Add 150 ml of oil and mix for one minute', ),              
                  const IngredientRow(icon: '🧈', name: 'Add ghee and mix well', ),           
                  const IngredientRow(icon: '🍲', name: 'The final marinade time should be a minimum of 3 to 4 hours', ),         
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
                      MaterialPageRoute(builder: (context) => const Step5()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text('Step 5'),
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
        children: [
          Text(icon, style: const TextStyle(fontSize: 24)),
          const SizedBox(width: 10), 
          Flexible(child: Text(name, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}