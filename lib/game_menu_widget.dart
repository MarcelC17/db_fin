import 'package:flutter/material.dart';

class GameMenuWidget extends StatelessWidget {
  const GameMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F4F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF39D2C0),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard'); // Navigate to the dashboard
          },
        ),
        title: const Text(
          'Game Menu',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4B39EF), Color(0xFF39D2C0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Brain Quest',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Challenge your knowledge',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Icon(
                        Icons.emoji_events,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24.0),
                Material(
                  color: Colors.transparent,
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(24.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Available Quizzes',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF14181B),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          _buildQuizCard(
                            context,
                            title: 'Finance',
                            details: '2 Questions • 1 minute',
                            color: const Color(0xFFF83B46),
                            onPressed: () {
                              Navigator.pushNamed(context, '/quiz_1');
                            },
                          ),
                          const SizedBox(height: 16.0),
                          _buildQuizCard(
                            context,
                            title: 'History of Finance',
                            details: '15 Questions • 10 minutes',
                            color: const Color(0xFFF83B46),
                            onPressed: () {
                              // Placeholder for History of Finance quiz
                            },
                          ),
                          const SizedBox(height: 16.0),
                          _buildQuizCard(
                            context,
                            title: 'Geography Genius',
                            details: '18 Questions • 12 minutes',
                            color: const Color(0xFFF83B46),
                            onPressed: () {
                              // Placeholder for Geography Genius quiz
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                Material(
                  color: Colors.transparent,
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(24.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Completed Quizzes',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF14181B),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          _buildCompletedQuiz(
                            context,
                            title: 'Literature Legends',
                            score: 'Score: 18/20',
                            statusColor: const Color(0xFF6BBD78),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuizCard(
      BuildContext context, {
        required String title,
        required String details,
        required Color color,
        required VoidCallback onPressed, // Added a callback for button press
      }) {
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
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF14181B),
                ),
              ),
              Text(
                details,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF677681),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: onPressed, // Use the callback here
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompletedQuiz(
      BuildContext context, {
        required String title,
        required String score,
        required Color statusColor,
      }) {
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
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF14181B),
                ),
              ),
              Text(
                score,
                style: TextStyle(
                  fontSize: 14.0,
                  color: statusColor,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle, color: statusColor, size: 20.0),
              const SizedBox(width: 4.0),
              Text(
                'Completed',
                style: TextStyle(
                  fontSize: 12.0,
                  color: statusColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
