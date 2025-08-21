import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orange.shade200,
              Colors.orange.shade400,
              Colors.orange.shade600,
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Text("Login",
                style: TextStyle(color: Colors.white, fontSize: 40)),
            const SizedBox(height: 60), // space below title
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      // ✅ Common container for both fields + button
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey.shade300),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20,
                              color: Color.fromRGBO(247, 207, 29, 0.458),
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            // Email input
                            TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: "Enter your email",
                                border: InputBorder.none,
                                icon:
                                    Icon(Icons.email, color: Colors.grey[700]),
                              ),
                            ),
                            const Divider(color: Colors.grey, thickness: 0.3),
                            // Password input
                            TextField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter your password",
                                border: InputBorder.none,
                                icon: Icon(Icons.lock,
                                    color: Colors.grey[700]),
                              ),
                            ),
                            const SizedBox(height: 20),
                            // ✅ Login button with gradient
                            GestureDetector(
                              onTap: () {
                                // Handle login action
                                print("Email: ${_emailController.text}");
                                print("Password: ${_passwordController.text}");
                              },
                              child: Container(
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.orange.shade400,
                                      Colors.orange.shade600,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
