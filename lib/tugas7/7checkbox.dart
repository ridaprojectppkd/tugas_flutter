import 'package:flutter/material.dart'; // Changed from widgets.dart to material.dart

class Checkbox2 extends StatefulWidget { // Changed class name to PascalCase
  const Checkbox2({super.key});

  @override
  State<Checkbox2> createState() => _Checkbox2State(); // Changed state class name
}

class _Checkbox2State extends State<Checkbox2> {
  bool _isTermsAccepted = false; // Added missing state variable
  final bool _isSwitchEnabled = false; // Added missing state variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syarat & Ketentuan'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Terms and Conditions Checkbox Section
            const Text(
              'Persyaratan Pendaftaran',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: _isTermsAccepted,
                  onChanged: (bool? value) {
                    setState(() {
                      _isTermsAccepted = value ?? false;
                    });
                  },
                ),
                const Text('Saya menyetujui semua persyaratan yang berlaku'),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              _isTermsAccepted 
                  ? 'Lanjutkan pendaftaran diperbolehkan' 
                  : 'Anda belum bisa melanjutkan',
              style: TextStyle(
                color: _isTermsAccepted ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                
              ],
            ),
            
            const SizedBox(height: 30),
            
            // Submit Button (only enabled when checkbox is checked)
            ElevatedButton(
              onPressed: _isTermsAccepted
                  ? () {
                      // Action when button is pressed
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Pendaftaran dilanjutkan...'),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  : null,
              child: const Text('LANJUTKAN PENDAFTARAN'),
            ),
          ],
        ),
      ),
    );
  }
}