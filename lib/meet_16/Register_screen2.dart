// import 'package:flutter/material.dart';
// import 'package:tugas_flutter/meet_16/database/db_helper2.dart';
// import 'package:tugas_flutter/meet_16/login_screen2.dart';
// import 'package:tugas_flutter/meet_16/user_model2.dart';
// import 'db_helper.dart';
// import 'user_model.dart';

// class RegisterScreenDua extends StatefulWidget {
//   const RegisterScreenDua ({Key? key}) : super(key: key);

//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreenDua> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Register')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: const InputDecoration(labelText: 'Name'),
//             ),
//             TextField(
//               controller: _usernameController,
//               decoration: const InputDecoration(labelText: 'Username'),
//             ),
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: _phoneController,
//               decoration: const InputDecoration(labelText: 'Phone'),
//             ),
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: const InputDecoration(labelText: 'Password'),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 final user = User(
//                   name: _nameController.text,
//                   username: _usernameController.text,
//                   email: _emailController.text,
//                   phone: _phoneController.text,
//                   password: _passwordController.text,
//                 );
                
//                 await DBHelper.insertUser(user);
                
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text('Registration successful')),
//                 );
                
//                 Navigator.pop(context);
//               },
//               child: const Text('Register'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }