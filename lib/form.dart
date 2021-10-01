import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String _value = '';

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  void onChange(String value) {
    setState(() => _value = 'Change $value');
  }

  void _showBottom() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Click Here For Next Page',
                  style: TextStyle(color: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Next'),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
              Row(
                children: [
                  Text(
                    'Username:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: TextField(
                    controller: userName,
                    autocorrect: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter Username',
                    ),
                  )),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  const Text(
                    'Password:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Show')),
              Text('This is UserName: ' + userName.text),
              Text('This is Password: ' + password.text),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Previous'),
              ),
              FlatButton(
                onPressed: () {
                  //Navigator.push(context, route);
                },
                child: Text('Previous'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
