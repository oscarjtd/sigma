// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleForm extends StatefulWidget {
  const SimpleForm({super.key});

  @override
  _SimpleFormState createState() => _SimpleFormState();
}

class _SimpleFormState extends State<SimpleForm> {
  List Mapeo = ['1'];
  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 15),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 780),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                onPressed: () async {
                  _showRolAdd(context);
                },
                icon: Icon(
                  CupertinoIcons.add,
                  size: 25,
                  color: Color.fromARGB(255, 22, 46, 111),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              dataTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              border: TableBorder(
                  verticalInside:
                      BorderSide(color: Color.fromARGB(255, 22, 46, 111)),
                  horizontalInside:
                      BorderSide(color: Color.fromARGB(255, 22, 46, 111)),
                  top: BorderSide(color: Color.fromARGB(255, 22, 46, 111)),
                  bottom: BorderSide(color: Color.fromARGB(255, 22, 46, 111)),
                  right: BorderSide(color: Color.fromARGB(255, 22, 46, 111)),
                  left: BorderSide(color: Color.fromARGB(255, 22, 46, 111)),
                  borderRadius: BorderRadius.circular(15)),
              columns: const <DataColumn>[
                DataColumn(
                  label: Center(child: Text("Identificador del Rol")),
                  tooltip: "Identificador del Rol",
                  numeric: true,
                ),
                DataColumn(
                  label: Center(child: Text("Nombre del Rol")),
                  tooltip: "Nombre del Rol",
                  numeric: true,
                ),
                DataColumn(
                  label: Center(child: Text("Descripcion del Rol")),
                  tooltip: "Descripcion del Rol",
                  numeric: false,
                ),
                DataColumn(
                  label: Center(child: Text("Estado del Rol")),
                  tooltip: "Estado del Rol",
                  numeric: true,
                ),
                DataColumn(
                  label: Center(child: Text("Acciones")),
                  tooltip: "Acciones",
                ),
              ],
              rows: Mapeo.map((productsList) {
                return DataRow(cells: [
                  DataCell(
                    Center(child: Text("124124")),
                    onTap: () {},
                  ),
                  DataCell(Center(child: Text("Administrador"))),
                  DataCell(Center(child: Text("Se podra administrar todo"))),
                  DataCell(Center(child: Text("Habilitado"))),
                  DataCell(Center(
                    child: Text.rich(WidgetSpan(
                        child: Row(
                      children: [
                        IconButton(
                            color: Colors.grey.shade900,
                            icon: Icon(CupertinoIcons.pencil),
                            onPressed: () async {
                              _showRolEdit(context);
                            }),
                        IconButton(
                          color: Colors.grey.shade900,
                          icon: Icon(CupertinoIcons.trash),
                          onPressed: () {},
                        ),
                      ],
                    ))),
                  )),
                ]);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

_showRolAdd(context) {
  final _formKey = GlobalKey<FormState>();
  TextEditingController datecontroller = TextEditingController();
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
                constraints: BoxConstraints(maxHeight: 400, maxWidth: 700),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: Text(
                          "Ingrese los datos del nuevo rol",
                          style: TextStyle(
                              fontSize: 25, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Icon(
                        Icons.group_add_rounded,
                        size: 25,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 40),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Form(
                                key: _formKey,
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60, right: 60),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Colors.greenAccent)),
                                        labelText: 'Identificacion del Rol',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60, right: 60),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Colors.greenAccent)),
                                        labelText: 'Nombre del Rol',
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.0),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 60, right: 60),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                width: 2,
                                                color: Colors.greenAccent)),
                                        labelText: 'Descripcion del Rol',
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
                                        backgroundColor:
                                            Color.fromARGB(199, 47, 158, 178),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                new BorderRadius.circular(18.0),
                                            side: const BorderSide(
                                              color: Color.fromARGB(
                                                  199, 60, 99, 218),
                                            )),
                                      ),
                                      child: const Text(
                                        'Enviar',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ])),
                          ))
                    ])));
      });
}

_showRolEdit(context) {
  final _formKey = GlobalKey<FormState>();
  TextEditingController datecontroller = TextEditingController();
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Container(
                constraints: BoxConstraints(maxHeight: 470, maxWidth: 700),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: Text(
                          "Modificar los datos del Rol",
                          style: TextStyle(
                              fontSize: 25, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Icon(
                        Icons.group_add_rounded,
                        size: 25,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 50, right: 50, top: 40),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Form(
                                child: Column(children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, right: 60),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.greenAccent)),
                                    labelText: 'Identificacion del Rol',
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, right: 60),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.greenAccent)),
                                    labelText: 'Nombre del Rol',
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, right: 60),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.greenAccent)),
                                    labelText: 'Descripcion del Rol',
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 60, right: 60),
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.greenAccent)),
                                    labelText: 'Estado del Rol',
                                  ),
                                  items: ["Habilitado", "Deshabilitado"]
                                      .map<DropdownMenuItem<String>>((String
                                              _value) =>
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
                              SizedBox(height: 16.0),
                              SizedBox(
                                height: 50,
                                width: 200,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(199, 47, 158, 178),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(18.0),
                                        side: const BorderSide(
                                          color:
                                              Color.fromARGB(199, 60, 99, 218),
                                        )),
                                  ),
                                  child: const Text(
                                    'Enviar',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ])),
                          ))
                    ])));
      });
}
