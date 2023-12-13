import 'package:fintrackernew/screens/home/home.screen.dart';
import 'package:fintrackernew/screens/onboard/widgets/profile.dart';
import 'package:flutter/material.dart';
import 'package:fintrackernew/screens/onboard/widgets/Register.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement login logic here
                // Example: Validate input, authenticate user, etc.
                print('Email: ${_emailController.text}');
                print('Password: ${_passwordController.text}');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileWidget()),
                );
                // Add your authentication logic here
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate to the registration page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              child: Text('Don\'t have an account? Register here.'),
            ),
          ],
        ),
      ),
    );
  }
}


