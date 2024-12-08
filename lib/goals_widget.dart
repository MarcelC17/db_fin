import 'package:flutter/material.dart';

class GoalsWidget extends StatelessWidget {
  const GoalsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4ECDC4),
      appBar: AppBar(
        backgroundColor: const Color(0xFF39D2C0),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard'); // Redirect to Dashboard
          },
        ),
        title: const Text(
          'Savings Goals',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24.0),
              _buildCurrentGoalSection(),
              const SizedBox(height: 24.0),
              _buildCompletedGoalsSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentGoalSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
      ),
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Current Goal',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            decoration: InputDecoration(
              labelText: 'What are you saving for?',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Color(0xFFF5F5F5),
            ),
          ),
          const SizedBox(height: 16.0),
          const TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'How much do you need?',
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Color(0xFFF5F5F5),
            ),
          ),
          const SizedBox(height: 16.0),
          SwitchListTile(
            value: true,
            onChanged: (_) {},
            title: const Text(
              'Parent Match',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Placeholder for Set Goal action
            },
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 56.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.0),
              ),
              backgroundColor: const Color(0xFF39D2C0),
            ),
            child: const Text(
              'Set Goal',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompletedGoalsSection() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
      ),
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Completed Goals',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 16.0),
          _buildCompletedGoalItem('Video Game', '\$60'),
          const SizedBox(height: 16.0),
          _buildCompletedGoalItem('Art Supplies', '\$25'),
          const SizedBox(height: 16.0),
          _buildCompletedGoalItem('Basketball', '\$30'),
        ],
      ),
    );
  }

  Widget _buildCompletedGoalItem(String title, String amount) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Saved: $amount',
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Icon(Icons.emoji_events, color: Color(0xFFFFD700)),
        ],
      ),
    );
  }
}
