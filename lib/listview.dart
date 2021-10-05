import 'package:flutter/material.dart';
import 'package:sample_widgets/form.dart';

class ListViewTemp extends StatefulWidget {
  const ListViewTemp({Key? key}) : super(key: key);

  @override
  _ListViewTempState createState() => _ListViewTempState();
}

class _ListViewTempState extends State<ListViewTemp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.all(32.0),
                  padding: EdgeInsets.all(32.0),
                  child: ListTile(
                    title: Text('Hello'),
                    tileColor: Colors.lightBlue[50],
                  )),
              SizedBox(height: 80.0),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(50.0),
                    child: const Card(
                      child: Text(
                        'Hello',
                        style: TextStyle(letterSpacing: 10.0, height: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
