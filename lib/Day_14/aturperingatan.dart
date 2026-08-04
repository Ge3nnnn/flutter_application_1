import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AturPeringatanTugas7Flutter extends StatefulWidget {
  const AturPeringatanTugas7Flutter({super.key});

  @override
  State<AturPeringatanTugas7Flutter> createState() =>
      _AturPeringatanTugas7FlutterState();
}

class _AturPeringatanTugas7FlutterState
    extends State<AturPeringatanTugas7Flutter> {
  TimeOfDay? _selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (picked != null) {
                  setState(() {
                    _selectedTime = picked;
                  });
                }
              },
              child: Text("Pilih zaman"),
            ),
            Text(
              _selectedTime == null
                  ? "anda belum pilih tanggal"
                  : DateFormat("'Peringatan diatur pada: ' HH:mm").format(
                      DateTime(
                        0,
                        0,
                        0,
                        _selectedTime!.hour,
                        _selectedTime!.minute,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
