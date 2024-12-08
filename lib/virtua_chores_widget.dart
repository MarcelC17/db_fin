import 'package:flutter/material.dart';
import 'dart:math';

class VirtuaChoresWidget extends StatelessWidget {
  const VirtuaChoresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4ECDC4),
      appBar: AppBar(
        backgroundColor: const Color(0xFF39D2C0),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard'); // Navigate to the dashboard
          },
        ),
        title: const Text(
          'VirtuaChores',
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
              const Text(
                'Current Chores',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              _buildChoreCard(
                context,
                title: 'Clean Your Room',
                amount: _generateRandomAmount(),
                icon: Icons.bed,
                backgroundColor: const Color(0xFF9C27B0),
              ),
              const SizedBox(height: 16),
              _buildChoreCard(
                context,
                title: 'Take Out Trash',
                amount: _generateRandomAmount(),
                icon: Icons.delete,
                backgroundColor: const Color(0xFFE91E63),
              ),
              const SizedBox(height: 16),
              const Text(
                'Add a New Chore',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              _buildCustomButton(
                context,
                title: 'Add Chore',
                backgroundColor: const Color(0xFF5C6BC0), // Calm and inviting blue
                onPressed: () {
                  // Placeholder action
                },
              ),
              const SizedBox(height: 24),
              const Text(
                'Completed Chores',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              _buildCompletedChore(context, 'Washed Dishes', '5 days ago'),
              const SizedBox(height: 16),
              _buildCompletedChore(context, 'Watered Plants', '2 days ago'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChoreCard(
      BuildContext context, {
        required String title,
        required String amount,
        required IconData icon,
        required Color backgroundColor,
      }) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 28,
                child: Icon(icon, size: 28, color: backgroundColor),
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Text(
            amount,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCustomButton(
      BuildContext context, {
        required String title,
        required Color backgroundColor,
        required VoidCallback onPressed,
      }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildCompletedChore(
      BuildContext context,
      String title,
      String date,
      ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            date,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  String _generateRandomAmount() {
    final random = Random();
    double amount = random.nextDouble() * 10;
    return '+\$${amount.toStringAsFixed(2)}';
  }
}
