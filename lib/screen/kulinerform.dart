import 'dart:io';

import 'package:flutter/material.dart';

class KulinerForm extends StatefulWidget {
  const KulinerForm({super.key});

  @override
  State<KulinerForm> createState() => _KulinerFormState();
}

class _KulinerFormState extends State<KulinerForm> {
  File? _image;
  final _imagePicker = ImagePicker();
  String? _alamat;

  final _formKey = GlobalKey<FormState>();
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _noTeleponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Nama', hintText: 'Masukan Nama'),
                controller: _namaController,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Email', hintText: 'Masukan Email'),
                controller: _emailController,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Alamat', hintText: 'Masukan Alamat'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextFormField(
                decoration: const InputDecoration(
                    labelText: 'No Telepon', hintText: 'Masukan No Telepon'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) ;
                  },
                  child: Text('Simpan')),
            )
          ],
        ),
      ),
    );
  }
}
