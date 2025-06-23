import 'package:flutter/material.dart';
import 'package:khmer_recipe_app/welcome.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Welcome());
  }
}
