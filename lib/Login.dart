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
            colors: [Colors.orange.shade200, Colors.orange.shade400,
             Colors.orange.shade600],
          ),
        ),
        child: Column(
        children: [
          Text("Login", style:TextStyle(color: Colors.white,fontSize:40 )) ,

           SizedBox(height: 60), // space below title
            Expanded(child: Padding(
           padding: const EdgeInsets.only(right: 10,left: 10), 
           child: Container(
                width:double.infinity,
              decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))   
            ),
              child: Column(
                children: [
  // Email input
  Container(
    margin: const EdgeInsets.symmetric(vertical: 8),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300),
       boxShadow:[BoxShadow(blurRadius:20,
       color:Color.fromRGBO(247, 207, 29, 0.458),
       offset: Offset(0,10) )],
    ),
   
    child: TextField(
      decoration: InputDecoration(
        hintText: "Enter your email",
        border: InputBorder.none,
        icon: Icon(Icons.email, color: Colors.grey[700]),
      ),
    ),
  ),

  // Password input
  Container(
    margin: const EdgeInsets.symmetric(vertical: 8),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Enter your password",
        border: InputBorder.none,
        icon: Icon(Icons.lock, color: Colors.grey[700]),
      ),
    ),
  ),
],

              ),
            ),
            )
             )
        ],
        
        ),
        
      ),
      
    );
  }
}
