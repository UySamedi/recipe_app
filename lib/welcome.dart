import 'package:flutter/material.dart';
import 'package:khmer_recipe_app/HomePage/HomeScreen.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/welcome_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Logo and App Name at the top
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/icons/logo_icon.png',
                      width: 150,
                      height: 150,
                    ),
                    Text(
                      'khmer Recipe App',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Welcome text in the center
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'to',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Cooking',
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Get Start button at the bottom
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homescreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),
                    child: Text(
                      'Get Start',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
