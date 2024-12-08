import 'package:flutter/material.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  int _selectedIndex = 0; // To track the selected tab
  double sliderValue = 85.0; // Default value for slider

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigation based on selected tab
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/gameMenu'); // Navigate to Game Menu
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/goals'); // Navigate to Goals page
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/chores'); // Navigate to Chores page
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFF4ECDC4),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFF6B6B), Color(0xFF4ECDC4)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Hi, Junior! 🎮',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Ready to learn about money?',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/settings');
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white30,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 2),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1475234561019-11e030717c51?w=500&h=500'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(24),
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'My Treasure Chest 🏴‍☠️',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Icon(Icons.savings,
                                      color: Color(0xFFFFD700), size: 32),
                                ],
                              ),
                              const Text(
                                '\$85.50',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFFF6B6B),
                                ),
                              ),
                              const Text(
                                'Wow! You\'re getting closer to that new game!',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Slider(
                                value: sliderValue,
                                min: 0,
                                max: 100,
                                activeColor: const Color(0xFF4ECDC4),
                                inactiveColor: const Color(0xFFE0E0E0),
                                onChanged: (value) {
                                  setState(() {
                                    sliderValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildHorizontalScroll(),
                      const SizedBox(height: 16),
                      _buildRecentActivities(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset),
              label: 'Play',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flag),
              label: 'Goals',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cleaning_services),
              label: 'Chores',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.teal,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Widget _buildHorizontalScroll() {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _buildCard(
            title: 'Pocket Money 🎯',
            amount: '\$10.00',
            description: 'Daily Allowance',
            colors: [Color(0xFFFF9A9E), Color(0xFFFAD0C4)],
          ),
          _buildCard(
            title: 'Savings 🌟',
            amount: '\$50.00',
            description: 'Weekly Goal',
            colors: [Color(0xFFA1C4FD), Color(0xFFC2E9FB)],
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String amount,
    required String description,
    required List<Color> colors,
  }) {
    return Container(
      width: 260,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          const SizedBox(height: 8),
          Text(amount,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          const SizedBox(height: 4),
          Text(description,
              style: const TextStyle(fontSize: 14, color: Colors.white70)),
        ],
      ),
    );
  }

  Widget _buildRecentActivities() {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recent Adventures 🗺️',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildActivity(
                icon: Icons.videogame_asset,
                title: 'Game Store',
                amount: '-\$15.99',
                date: '2 days ago'),
            _buildActivity(
                icon: Icons.cleaning_services,
                title: 'Chores Completed',
                amount: '+\$10.00',
                date: 'Yesterday'),
          ],
        ),
      ),
    );
  }

  Widget _buildActivity({
    required IconData icon,
    required String title,
    required String amount,
    required String date,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.teal),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16)),
                  Text(date, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
          Text(amount,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: amount.startsWith('+') ? Colors.teal : Colors.red)),
        ],
      ),
    );
  }
}
