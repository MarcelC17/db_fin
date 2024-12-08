import 'package:flutter/material.dart';

class Quiz_1_OG extends StatelessWidget {
  const Quiz_1_OG({super.key});

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
                'Question 1/2',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16.0),
              LinearProgressIndicator(
                value: 0.1,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              ),
              const SizedBox(height: 32.0),
              const Text(
                'Your friend just got their first allowance and wants to spend it all on candy. What would you suggest?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),
              _buildAnswerButton(
                context,
                'Save half and spend half - balance is key!',
              ),
              const SizedBox(height: 16.0),
              _buildAnswerButton(
                context,
                'Go for it - money is for spending!',
              ),
              const SizedBox(height: 16.0),
              _buildAnswerButton(
                context,
                'Save it all - you\'ll thank yourself later',
              ),
              const SizedBox(height: 16.0),
              _buildAnswerButton(
                context,
                'Ask your parents for advice first',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAnswerButton(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/quiz_2'); // Navigate to quiz2
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        backgroundColor: Colors.blueAccent,
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
