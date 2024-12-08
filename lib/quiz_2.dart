import 'package:flutter/material.dart';

class Quiz1x1Widget extends StatelessWidget {
  const Quiz1x1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text(
          'Finance Quiz',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Question 2/2',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16.0),
              LinearProgressIndicator(
                value: 0.5,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              ),
              const SizedBox(height: 32.0),
              const Text(
                'Your wallet feels lighter than your Tamagotchi.\n\nWhat\'s probably the reason?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),
              _buildOptionButton(
                context,
                'My wallet got a hole from all the cheese I\'m buying!🐭',
              ),
              const SizedBox(height: 16.0),
              _buildOptionButton(
                context,
                'Impulse shopping got me again... Those flash sales! 💸',
              ),
              const SizedBox(height: 16.0),
              _buildOptionButton(
                context,
                'I invested in a "get rich quick" scheme. Oops. 📉',
              ),
              const SizedBox(height: 16.0),
              _buildOptionButton(
                context,
                'The bank decided to borrow my money without asking.🏦',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionButton(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/gameMenu'); // Navigate to game menu page
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: Colors.blueAccent,
        // backgroundColor: Colors.blueAccent,

        elevation: 4.0,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
