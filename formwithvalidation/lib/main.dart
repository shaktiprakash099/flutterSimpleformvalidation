import 'package:flutter/material.dart';
import 'form.dart';

void main() => runApp(new MyformApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Retrive text input',
      home: new MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyformState();
  }
}

class MyformState extends State<MyForm> {
  final mycontroller = new TextEditingController();
  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Retrive text Inputs'),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new TextField(
          controller: mycontroller,
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
         return showDialog(
           context: context,
           builder: (context){
             return new AlertDialog(
              content: new Text(mycontroller.text),
             );
           },

         );

        },
        tooltip: 'show me the value!',
        child: new Icon(Icons.text_fields),
      ),
    );
  }
}
