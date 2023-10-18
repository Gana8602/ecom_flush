import 'package:ecom/screens/Home/home.dart';
import 'package:ecom/screens/Home/widgets/HomePage_appBar.dart';
import 'package:ecom/screens/login/register/Register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'Loginpage';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final _formkey = GlobalKey<FormState>();
  // final _emailController = TextEditingController();
  // final _passwordController = TextEditingController();

  // Future<void> _Login() async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(
  //       email: _emailController.text,
  //       password: _passwordController.text,
  //     );

  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => const MyAppbar()));
  //     // Login successful, navigate to the next screen
  //   } catch (e) {
  //     // Handle login errors
  //   }
  // }

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
              // key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Log In',
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
                           
                            child: const Center(child: Text('Logo')),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextField(
                              // controller: _emailController,
                              decoration: const InputDecoration(
                                labelText: 'E-mail address',
                                suffixIcon: Icon(
                                  Icons.email_outlined,
                                  size: 17,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextField(
                              // controller: _passwordController,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                suffixIcon: Icon(
                                  Icons.key_off_outlined,
                                  size: 17,
                                ),
                              ),
                            ),
                          ),
                        ]),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyAppbar(pageIndex: 0,)));
                      },
                      // async {
                      //   if (_formkey.currentState!.validate()) {
                      //     _Login();
                      //   }
                      // },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Dont have an account  '),
                      TextButton(
                        onPressed:(){Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()));},
                        child: const Text('Register',
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
