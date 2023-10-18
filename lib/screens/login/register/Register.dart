import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Home/home.dart';
import 'Login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formkey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _pphoneNumberController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _Register() async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      Map<String, dynamic> userData = {
        'username': _nameController.text,
        'phone_number': _pphoneNumberController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
      };

      await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set(userData);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    } catch (e) {
      // Handle registration errors
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          child: Container(
            height: 500,
            child: Center(
                child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 100,
                            color: Colors.red,
                            child: const Center(child: Text('Logo')),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextFormField(
                              controller: _nameController,
                              decoration: const InputDecoration(
                                labelText: 'Name',
                                suffixIcon: Icon(
                                  Icons.person,
                                  size: 17,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextFormField(
                              controller: _pphoneNumberController,
                              decoration: const InputDecoration(
                                labelText: 'phone Number',
                                suffixIcon: Icon(
                                  Icons.phone,
                                  size: 17,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextFormField(
                              controller: _emailController,
                              decoration: const InputDecoration(
                                labelText: 'E-mail address',
                                suffixIcon: Icon(
                                  Icons.email_outlined,
                                  size: 17,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email address';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextFormField(
                              controller: _passwordController,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                suffixIcon: Icon(
                                  Icons.key_off_outlined,
                                  size: 17,
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                            ),
                          ),
                        ]),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formkey.currentState!.validate()) {
                        _Register();
                      }
                    },
                    child: const Text(
                      'Register',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Allredy have an account'),
                      TextButton(
                        onPressed: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));},
                       child: const Text('Login',
                        style: TextStyle(color: Colors.blue),)
                      ),
                    ],
                  )
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
