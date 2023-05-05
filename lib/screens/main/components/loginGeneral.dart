// ignore_for_file: unnecessary_new, unused_element, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginGeneral extends StatefulWidget {
  const LoginGeneral({super.key});

  @override
  State<LoginGeneral> createState() => _LoginGeneralState();
}

class _LoginGeneralState extends State<LoginGeneral> {
  var _passwordVisible;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Color.fromARGB(255, 0, 120, 131),
          Color.fromARGB(255, 17, 65, 86),
        ],
      )),
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: SizedBox(
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Icon(
                      Icons.access_alarm_outlined,
                      size: 50,
                    ),
                    const SizedBox(height: 35),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                autofocus: false,
                                style: const TextStyle(
                                    fontSize: 15.0, color: Colors.black),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Cedula',
                                  filled: true,
                                  fillColor: Colors.grey,
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 6.0, top: 8.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                obscureText: !_passwordVisible,
                                autofocus: false,
                                style: const TextStyle(
                                    fontSize: 15.0, color: Colors.black),
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: const Color.fromARGB(
                                          200, 168, 207, 69),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Contraseña',
                                  filled: true,
                                  fillColor: Colors.grey,
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 6.0, top: 15.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 1),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: const Color.fromARGB(
                                          200, 168, 207, 69),
                                    ),
                                    onPressed: () {
                                      _showEmailPasswordModalDialog(context);
                                    },
                                    child: const Text('¿Olvido su contraseña?'),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                  height: 50,
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.popAndPushNamed(
                                          context, '/MainPage');
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          200, 168, 207, 69),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(18.0),
                                          side: const BorderSide(
                                            color: Color.fromARGB(
                                                200, 168, 207, 69),
                                          )),
                                    ),
                                    child: const Text(
                                      'Ingresar',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_showEmailPasswordModalDialog(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            constraints: BoxConstraints(maxHeight: 350, maxWidth: 500),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.safety_check_outlined,
                    size: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Text(
                      "Por favor, ingrese su correo para enviarle los pasos a seguir para recuperar la contraseña",
                      style:
                          TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextField(
                      autofocus: false,
                      style:
                          const TextStyle(fontSize: 15.0, color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Correo Electronico',
                        filled: true,
                        fillColor: Colors.grey,
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 6.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, '/MainPage');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(200, 168, 207, 69),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                side: const BorderSide(
                                  color: Color.fromARGB(200, 168, 207, 69),
                                )),
                          ),
                          child: const Text(
                            'Enviar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        );
      });
}
