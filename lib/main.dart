import 'package:flutter/material.dart';
import 'login_widget.dart'; // Import the login widget file
import 'sign_up_widget.dart'; // Import the signup widget file
import 'dashboard_widget.dart'; // Import the dashboard widget file
import 'goals_widget.dart'; // Import the goals widget file
import 'settings_widget.dart'; // Import the settings widget file
import 'transactions_widget.dart'; // Import the transactions widget file
import 'parrental_dashboard_widget.dart'; // Import the parental dashboard widget file
import 'tutor_dashboard_widget.dart'; // Import the tutor dashboard widget file
import 'virtua_chores_widget.dart'; // Import the chores widget file
import 'game_menu_widget.dart'; // Import the game menu widget file
import 'quiz_1.dart'; // Import the quiz widget file
import 'quiz_2.dart'; // Import the quiz widget file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PocketPal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/login', // Set the initial route
      routes: {
        '/login': (context) => const LoginWidget(), // Login page route
        '/signup': (context) => const SignUpWidget(), // SignUp page route
        '/dashboard': (context) => const DashboardWidget(), // Dashboard route
        '/goals': (context) => const GoalsWidget(), // Goals page route
        '/settings': (context) => const SettingsWidget(), // Settings page route
        '/transactions': (context) => const TransactionsWidget(), // Transactions page route
        '/parentalDashboard': (context) => const ParrentDash1Widget(), // Parental dashboard route
        '/tutorDashboard': (context) => const TutorDashWidget(), // Tutor dashboard route
        '/chores': (context) => const VirtuaChoresWidget(), // Chores page route
        '/gameMenu': (context) => const GameMenuWidget(), // Game Menu page route
        '/quiz_2': (context) => const Quiz1x1Widget(), // Quiz page route
        '/quiz_1': (context) => const Quiz_1_OG(), // Quiz page route
      },
    );
  }
}
