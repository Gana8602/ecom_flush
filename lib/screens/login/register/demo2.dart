import 'package:ecom/screens/Home/widgets/HomePage_appBar.dart';
import 'package:ecom/screens/login/register/demo.dart';
import 'package:flutter/material.dart';

import '../widgets/btn2.dart';
import '../widgets/field.dart';

class Demotwodart extends StatefulWidget {
  const Demotwodart({super.key});

  @override
  State<Demotwodart> createState() => _DemotwodartState();
}

class _DemotwodartState extends State<Demotwodart> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),
              MyTextField(
                controller: usernameController,
                hintText: 'phone number',
                obscureText: false,
              ),

              const SizedBox(height: 10),
              MyTextField(
                controller: usernameController,
                hintText: 'email id',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAppbar(pageIndex: 0,)));
                },
              ),

              const SizedBox(height: 50),

              // or continue with

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'lready have ana account',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const SizedBox(width: 4),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Demodart()));
                      },
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
