import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ReminderTimePage extends StatefulWidget {
  const ReminderTimePage({super.key});

  @override
  State<ReminderTimePage> createState() => _ReminderTimePageState();
}

class _ReminderTimePageState extends State<ReminderTimePage> {
  TimeOfDay? _selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Atur Pengingat',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => _selectTime(context),
            child: const Text('Pilih Waktu Pengingat'),
          ),
          const SizedBox(height: 20),
          Text(
            _selectedTime == null
                ? 'Belum mengatur waktu'
                : 'Pengingat diatur pukul: ${_selectedTime!.format(context)}',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}