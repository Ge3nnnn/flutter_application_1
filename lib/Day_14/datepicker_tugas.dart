import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerTugas7Flutter extends StatefulWidget {
  const DatePickerTugas7Flutter({super.key});

  @override
  State<DatePickerTugas7Flutter> createState() =>
      _DatePickerTugas7FlutterState();
}

class _DatePickerTugas7FlutterState extends State<DatePickerTugas7Flutter> {
  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Pilih Tanggal Lahir Anda", style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (picked != null) {
                  setState(() {
                    _selectedDate = picked;
                  });
                }
              },
              child: Text("Pilih tanggalan lahir anda"),
            ),
            Text(
              _selectedDate == null
                  ? "anda belum pilih tanggal"
                  : DateFormat(
                      "'Tanggal Lahir : 'dd-MM-yyyy",
                    ).format(_selectedDate ?? DateTime.now()),
            ),
          ],
        ),
      ),
    );
  }
}
