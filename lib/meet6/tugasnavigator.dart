// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tugas_flutter/meet6/Tugas4flutter%20copy.dart';
import 'package:tugas_flutter/meet_12/meet_12a.dart';
// import 'package:tugas_flutter/tugas5.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////////apbarrrr home
      appBar: AppBar(
        title: Text('Halaman Utama'),
        automaticallyImplyLeading: false,
      ),
      // body: Center(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Assets/image/background2.png'),
                fit: BoxFit.cover,
              ),
            ),
            // child: ElevatedButton(
            //   child: Text('pergi ke halaman lain'),
            //   onPressed: () => Navigator.push(context,
            //   MaterialPageRoute(builder: context) => TugasEmpattrial() )
            // // ),
            //     ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),
                  const Center(
                    child: Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: Text(
                      'Sign In into your account',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff888888),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Rida Dzakiyyah Tugas 6 Flutter',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                    validator:
                        (value) =>
                            value == null || value.isEmpty
                                ? 'Please enter your email'
                                : null,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff888888),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(color: Color(0xff888888)),
                      ),
                    ),
                    validator:
                        (value) =>
                            value == null || value.isEmpty
                                ? 'Please enter your phone number'
                                : null,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff888888),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      prefixIcon: const Icon(Icons.lock_outline),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide(color: Color(0xFF888888)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 243, 65, 33),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        //////////////navigasi push
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Meet12AInputWidget(),
                          ),
                        );
                        if (_formKey.currentState!.validate()) {
                          // Login logic here
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff283FB1),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffFFF2EB),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey[300])),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or Sign In With',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ),
                      Expanded(child: Divider(color: Colors.grey[300])),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      ////////////////NAVIGATOR PUSH NGEDORONG KEHALAMAN SELANJUTNYA (NEXT)
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TugasEmpattrial(),
                          ),
                        );
                        // Google sign in logic
                      },
                      icon: Image.asset(
                        'Assets/image/google2.png',
                        width: 24,
                        height: 24,
                      ),
                      label: const Text('Google'),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xffFFFFFF),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        side: BorderSide(color: Colors.grey[300]!),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                    ),
                  ),
                  ////coba sini is taht dont have accccccccccccccc
                  const SizedBox(height: 30),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text.rich(
                        TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 96, 174),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 30),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Tugas5');
                      },
                      child: const Text.rich(
                        TextSpan(
                          text: "Navigator",
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'PushNamed ke tugas5',
                              style: TextStyle(
                                color: Color.fromARGB(201, 102, 102, 102),
                                fontWeight: FontWeight.bold,
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
          ),
        ],
      ),
    );
  }
}
