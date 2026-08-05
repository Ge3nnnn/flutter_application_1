import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CheckBoxDay13 extends StatefulWidget {
  const CheckBoxDay13({super.key});

  @override
  State<CheckBoxDay13> createState() => _CheckBoxDay13State();
}

class _CheckBoxDay13State extends State<CheckBoxDay13> {
  bool _isCheck = false;
  bool _isOn = false;
  String? _selected;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 252, 251, 251),
      child: Center(
        child: Column(
          children: [
            // CheckBox
            checkboxWidget(),
            // switch
            switchWidget(),
            // Drop down
            dropdownWidget(),
            Divider(),
            // Date picker
            datepickerWidget(context),
            // Jam picker
            Divider(),
            jampickerwidget(context),
          ],
        ),
      ),
    );
  }

  Column jampickerwidget(BuildContext context) {
    return Column(
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
              : DateFormat("HH:mm").format(
                  DateTime(0, 0, 0, _selectedTime!.hour, _selectedTime!.minute),
                ),
        ),
        Text(
          _selectedTime == null
              ? "anda belum pilih jam"
              : _selectedTime.toString(),
        ),
      ],
    );
  }

  Column datepickerWidget(BuildContext context) {
    return Column(
      children: [
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
          child: Text("Pilih tanggalan"),
        ),
        Text(
          _selectedDate == null
              ? "anda belum pilih tanggal"
              : _selectedDate.toString(),
        ),
        Text(
          _selectedDate == null
              ? "anda belum pilih tanggal"
              : DateFormat(
                  "EEEE, dd MMMM yyyy",
                ).format(_selectedDate ?? DateTime.now()),
        ),
        Text(
          _selectedDate == null
              ? "anda belum pilih tanggal"
              : DateFormat(
                  "EEEE, dd MMMM yyyy",
                  "id_ID", //kudu inisialisasi di main.dart
                ).format(_selectedDate ?? DateTime.now()),
        ),
      ],
    );
  }

  // Don't Reapet Yoursendiri
  Column dropdownWidget() {
    return Column(
      children: [
        DropdownButton(
          dropdownColor: const Color.fromARGB(255, 155, 65, 135),
          value: _selected,
          items: ["Merah", "Kuning", "Hijau"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selected = value;
            });
          },
        ),
        Text(_selected.toString()),
        Container(
          height: 100,
          width: 100,
          color: _selected == "Merah"
              ? Colors.red
              : _selected == "Kuning"
              ? Colors.yellow
              : _selected == "Hijau"
              ? Colors.green
              : Colors.black,
        ),
      ],
    );
  }

  Column switchWidget() {
    return Column(
      children: [
        Switch(
          activeThumbColor: Colors.blueAccent,
          inactiveThumbColor: Colors.red,
          value: _isOn,
          onChanged: (value) {
            _isOn = value ?? false;
            setState(() {});
          },
        ),
        Text(_isOn ? "sudah nyala" : "belum di myala"),
      ],
    );
  }

  Column checkboxWidget() {
    return Column(
      children: [
        Checkbox(
          value: _isCheck,
          onChanged: (value) {
            _isCheck = value ?? false;
            setState(() {});
          },
        ),
        Text(_isCheck ? "sudah di check" : "belum di check"),
      ],
    );
  }
}
