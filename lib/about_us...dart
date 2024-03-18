import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to our BMI Calculator app!',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Our mission is to help you track and manage your BMI (Body Mass Index) easily and effectively.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'If you have any questions or feedback, feel free to contact us.',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
