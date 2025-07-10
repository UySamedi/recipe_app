import 'package:flutter/material.dart';
import 'package:khmer_recipe_app/RecipeCard/RecipeCard.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0), // Added top padding of 10
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0), // Adjusted to horizontal padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello Jega',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'What are you cooking today?',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search recipe',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FilterChip(
                        label: const Text('All'),
                        selected: true,
                        onSelected: (bool value) {},
                      ),
                      const SizedBox(width: 8),
                      FilterChip(
                        label: const Text('Sugar'),
                        onSelected: (bool value) {},
                      ),
                      const SizedBox(width: 8),
                      FilterChip(
                        label: const Text('Allergy'),
                        onSelected: (bool value) {},
                      ),
                      const SizedBox(width: 8),
                      FilterChip(
                        label: const Text('Beef'),
                        onSelected: (bool value) {},
                      ),
                      const SizedBox(width: 8),
                      FilterChip(
                        label: const Text('Chinese'),
                        onSelected: (bool value) {},
                      ),
                      const SizedBox(width: 8),
                      FilterChip(
                        label: const Text('Fruit'),
                        onSelected: (bool value) {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: List.generate(4, (index) {
                return RecipeCard(
                  title: 'Crunchy Nut Coleslaw',
                  time: '10 Mins',
                  rating: 3.5,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}