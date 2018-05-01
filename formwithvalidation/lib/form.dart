import 'package:flutter/material.dart';

class MyformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'New text',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Form validation demo'),

        ),
        body:  new MyNewForm(),
      ),
      
    );
  }
}

class MyNewForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyNewFormState();
  }
}

class MyNewFormState extends State<MyNewForm> {
  final GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Form(
      key: _formkey,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Please Enter some text';
              }
            },
          ),
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: new Center(
              child:
             new RaisedButton(
              onPressed: () {
                if (_formkey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(
                      new SnackBar(content: new Text('Processing Data')));
                }
              },
              child: new Text('Submit'),
            ),
               
            ),
           
          ),
        ],
      ),
    );
  }
}
