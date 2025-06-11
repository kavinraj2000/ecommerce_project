import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Center(child: Text("Login Page")),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Email Number/Phone Number'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: TextField(
                      minLines: 1,
                      maxLines: 3,
                      decoration: InputDecoration(border: OutlineInputBorder(), hintText: 'Password'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
