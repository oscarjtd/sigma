// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SimpleForm extends StatefulWidget {
  @override
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  String _email = "";
  final _formKey = GlobalKey<FormState>();
  String _name = "";

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(60.0),
        child: Form(
            key: _formKey,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(width: 2, color: Colors.greenAccent)),
                    labelText: 'Nombre',
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(199, 47, 158, 178),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: const BorderSide(
                          color: Color.fromARGB(199, 60, 99, 218),
                        )),
                  ),
                  child: const Text(
                    'Enviar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ])));
  }
}
