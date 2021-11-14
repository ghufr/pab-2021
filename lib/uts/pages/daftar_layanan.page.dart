import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DaftarLayananPage extends StatefulWidget {
  const DaftarLayananPage({Key? key}) : super(key: key);

  @override
  State<DaftarLayananPage> createState() => _DaftarLayananPageState();
}

class _DaftarLayananPageState extends State<DaftarLayananPage> {
  final _formKey = GlobalKey<FormState>();
  final hours = ['09.00', '10.00', '11.00', '12.00', '13.00', '14.00'];
  String _selectedValue = '09.00';
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    Intl.systemLocale = 'id_ID';
  }

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    ).then((value) => {
          setState(() {
            _selectedDate = value!;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Layanan'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                onTap: _showDatePicker,
                readOnly: true,
                controller: TextEditingController.fromValue(
                  TextEditingValue(
                    text: DateFormat('d MMMM yyyy').format(_selectedDate),
                  ),
                ),
                decoration: const InputDecoration(
                  hintText: 'Pilih Tanggal',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Tanggal Kunjungan',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  labelText: 'Jam Kunjungan',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),
                ),
                hint: Text('Pilih Jam'),
                value: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value.toString();
                  });
                },
                items: hours.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Keperluan',
                  helperText: '',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    double.infinity,
                    48,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
