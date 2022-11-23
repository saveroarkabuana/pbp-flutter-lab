import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/form.dart' as form;
import 'package:counter_7/page/drawer.dart';

var formData = form.budgetList;

class MyShowPage extends StatefulWidget {
    const MyShowPage({super.key});

    @override
    State<MyShowPage> createState() => _MyShowPageState();
}

class _MyShowPageState extends State<MyShowPage> {

    void showData(){
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),

      drawer: buildDrawer(context),
      
      body: Center(
        child: Column(
          children: <Widget>[
            
            for (int i=0; i < formData.length; i++)...[

              Container(
                child: Card(
                  elevation: 20,
                  shadowColor: Colors.blue,
                  color: Colors.white,
                  child: SizedBox(
                    width: 1000,
                    height: 90,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                            formData[i].judul,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          ),

                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    formData[i].nominal,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),                                  
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    formData[i].jenis,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),                                  
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ],
        ),
      ),
    );
  }
}