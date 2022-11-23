import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/show.dart';
import 'package:counter_7/page/drawer.dart';

var budgetList = [];

class Budget {
    String judul = "";
    String nominal = "";
    String jenis = "";

    Budget(String judul, String nominal, String jenis){
        this.judul = judul;
        this.nominal = nominal;
        this.jenis = jenis;
    }
}

class MyFormPage extends StatefulWidget {
    const MyFormPage({super.key});

    @override
    State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _judul = "";
    String _nominal = "";
    String pilihJenis = 'Pengeluaran';
    List<String> listJenis = ['Pengeluaran', 'Pemasukan'];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
            ),

            drawer: buildDrawer(context),

            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "Judul",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5.0),
                                          ),
                                      ),
                                      onChanged: (String? value) {
                                          setState(() {
                                              _judul = value!;
                                          });
                                      },
                                      onSaved: (String? value) {
                                          setState(() {
                                              _judul = value!;
                                          });
                                      },
                                      validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                              return 'Judul tidak boleh kosong!';
                                          }
                                          return null;
                                      },
                                  ),
                              ),

                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: "Nominal",
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(5.0),
                                          ),
                                      ),
                                      onChanged: (String? value) {
                                          setState(() {
                                              _nominal = value!;
                                          });
                                      },
                                      onSaved: (String? value) {
                                          setState(() {
                                              _nominal = value!;
                                          });
                                      },
                                      validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                              return 'Nominal tidak boleh kosong!';
                                          }
                                          return null;
                                      },
                                  ),
                              ),

                              ListTile(
                                  leading: const Icon(Icons.class_),
                                  title: const Text(
                                      'Pilih Jenis',
                                  ),
                                  trailing: DropdownButton(
                                      value: pilihJenis,
                                      icon: const Icon(Icons.keyboard_arrow_down),
                                      items: listJenis.map((String items) {
                                      return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                      );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                      setState(() {
                                          pilihJenis = newValue!;
                                      });
                                      },
                                  ),
                              ),

                              TextButton(
                                  child: const Text(
                                      "Simpan",
                                      style: TextStyle(color: Colors.white),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            elevation: 15,
                                            child: Container(
                                              child: ListView(
                                                padding:
                                                    const EdgeInsets.only(top: 20, bottom: 20),
                                                shrinkWrap: true,
                                                children: <Widget>[
                                                  const Center(child: Text('Informasi Data')),
                                                  const SizedBox(height: 20),
                                                  // TODO: Munculkan informasi yang didapat dari form
                                                  Center(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                      children: [
                                                        Text(
                                                          "Judul : $_judul",
                                                          style: TextStyle(color: Colors.blue),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text(
                                                          "Nominal : $_nominal",
                                                          style: TextStyle(color: Colors.blue),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text(
                                                          "Jenis : $pilihJenis",
                                                          style: TextStyle(color: Colors.blue),
                                                        ),
                                                        const SizedBox(
                                                          height: 15,
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      Budget budget = new Budget(_judul, _nominal, pilihJenis);
                                                      budgetList.add(budget);
                                                    },
                                                    child: const Text('Kembali'),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    }
                                  },
                              ),
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}