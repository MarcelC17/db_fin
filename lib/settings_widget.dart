import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4B39EF),
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
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
                          onPressed: () {
                            Navigator.pop(context); // Navigate back
                          },
                        ),
                        const Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1475234561019-11e030717c51?w=500&h=500'),
                    ),
                  ],
                ),
                const SizedBox(height: 18.0),
                _buildSettingsOption(
                  context,
                  icon: Icons.person_outline,
                  color: Colors.blueAccent,
                  title: 'Profile Settings',
                  description: 'Update your personal information',
                  onTap: () {}, // Placeholder for other options
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.account_balance,
                  color: Colors.green,
                  title: 'Parent\'s Banking',
                  description: 'Manage connected bank accounts',
                  onTap: () {
                    Navigator.pushNamed(context, '/parentalDashboard'); // Navigate to Parental Dashboard
                  },
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.account_balance_wallet,
                  color: Colors.teal,
                  title: 'Tutor\'s Banking',
                  description: 'Manage tutor bank accounts',
                  onTap: () {
                    Navigator.pushNamed(context, '/tutorDashboard'); // Navigate to Tutor Dashboard
                  },
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.notifications_none,
                  color: Colors.orange,
                  title: 'Notifications',
                  description: 'Set your notification preferences',
                  onTap: () {}, // Placeholder for other options
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.security,
                  color: Colors.redAccent,
                  title: 'Security',
                  description: 'Password and security settings',
                  onTap: () {}, // Placeholder for other options
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.help_outline,
                  color: Colors.lightBlueAccent,
                  title: 'Help Center',
                  description: 'Get support and learn more',
                  onTap: () {}, // Placeholder for other options
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.info_outline,
                  color: Colors.lightGreen,
                  title: 'About PocketPal',
                  description: 'App version and information',
                  onTap: () {}, // Placeholder for other options
                ),
                const SizedBox(height: 18.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/login',
                          (Route<dynamic> route) => false,
                    ); // Navigate to Login and clear navigation stack
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                    ),
                    minimumSize: const Size(double.infinity, 52.0),
                  ),
                  child: const Text(
                    'Log Out',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsOption(
      BuildContext context, {
        required IconData icon,
        required Color color,
        required String title,
        required String description,
        required VoidCallback onTap, // Added a callback for navigation
      }) {
    return GestureDetector(
      onTap: onTap, // Use the callback when the option is tapped
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.0),
          ),
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: color,
                    child: Icon(icon, color: Colors.white, size: 20),
                  ),
                  const SizedBox(width: 14.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.chevron_right, color: Colors.grey, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
