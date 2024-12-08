import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController lastNameTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController phoneNoTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();
  final TextEditingController confirmPasswordTextController = TextEditingController();
  bool passwordVisibility = false;
  bool confirmPasswordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Join PocketPal!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Start your child\'s journey to financial wisdom',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 24),
              _buildTextField('First Name', nameTextController),
              const SizedBox(height: 16),
              _buildTextField('Last Name', lastNameTextController),
              const SizedBox(height: 16),
              _buildTextField('Email Address', emailTextController, keyboardType: TextInputType.emailAddress),
              const SizedBox(height: 16),
              _buildTextField('Phone Number', phoneNoTextController, keyboardType: TextInputType.phone),
              const SizedBox(height: 16),
              _buildPasswordField('Password', passwordTextController, passwordVisibility, (visible) {
                setState(() {
                  passwordVisibility = visible;
                });
              }),
              const SizedBox(height: 16),
              _buildPasswordField('Confirm Password', confirmPasswordTextController, confirmPasswordVisibility, (visible) {
                setState(() {
                  confirmPasswordVisibility = visible;
                });
              }),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // Navigate to Dashboard Page
                  Navigator.pushNamed(context, '/dashboard');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  backgroundColor: Colors.teal,
                ),
                child: const Text(
                  'Create Account',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Login Page
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, {TextInputType keyboardType = TextInputType.text}) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }

  Widget _buildPasswordField(
      String label, TextEditingController controller, bool isVisible, Function(bool) toggleVisibility) {
    return TextField(
      controller: controller,
      obscureText: !isVisible,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        suffixIcon: IconButton(
          icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
          onPressed: () => toggleVisibility(!isVisible),
        ),
      ),
    );
  }
}
