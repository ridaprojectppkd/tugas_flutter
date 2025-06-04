// import 'package:flutter/material.dart';
// import 'package:tugas_flutter/meet_16/Register_screen2.dart';
// import 'package:tugas_flutter/meet_16/database/db_helper2.dart';
// import 'package:tugas_flutter/meet_16/user_model2.dart';
// import 'db_helper.dart';
// import 'user_model.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Login')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: const InputDecoration(labelText: 'Password'),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 final user = await DBHelper.login(
//                   _emailController.text,
//                   _passwordController.text,
//                 );
                
//                 if (user != null) {
//                   // Navigate to home screen
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Login successful')),
//                   );
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('Invalid credentials')),
//                   );
//                 }
//               },
//               child: const Text('Login'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const RegisterScreenDua()),
//                 );
//               },
//               child: const Text('Register'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DBHelper {
//   static login(String text, String text2) {}

//   static insertUser(User user) {}
// }