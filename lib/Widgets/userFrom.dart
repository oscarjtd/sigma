// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class userForm extends StatefulWidget {
  @override
  _userFormState createState() => _userFormState();
}

class _userFormState extends State<userForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController datecontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
                      labelText: 'Nombres',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Apellidos',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Direccion',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Correo ',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Telefono',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Contraseña',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Documento',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Tipo de documento',
                    ),
                    items: ["CC", "Tarjeta de identidad"]
                        .map<DropdownMenuItem<String>>((String _value) =>
                            DropdownMenuItem<String>(
                                value:
                                    _value, // add this property an pass the _value to it
                                child: Text(
                                  _value,
                                )))
                        .toList(),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Genero',
                    ),
                    items: ["Masculino", "Femenino"]
                        .map<DropdownMenuItem<String>>((String _value) =>
                            DropdownMenuItem<String>(
                                value:
                                    _value, // add this property an pass the _value to it
                                child: Text(
                                  _value,
                                )))
                        .toList(),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    controller: datecontroller,
                    onTap: () async {
                      DateTime? selecteddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now());
                      datecontroller.text = selecteddate.toString();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: '',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Estado civil',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Tipo de documento',
                    ),
                    items: ["O-", "O+", "A", "B", "AB"]
                        .map<DropdownMenuItem<String>>((String _value) =>
                            DropdownMenuItem<String>(
                                value:
                                    _value, // add this property an pass the _value to it
                                child: Text(
                                  _value,
                                )))
                        .toList(),
                    onChanged: (value) {},
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'RHFAC',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'EPS',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'Libreta militar',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'ICFES',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.greenAccent)),
                      labelText: 'CIUDAD',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
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
              ])),
        ));
  }
}
