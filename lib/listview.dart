import 'package:flutter/material.dart';
import 'package:sample_widgets/popupmenu.dart';

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
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(32.0),
                padding: const EdgeInsets.all(32.0),
                child: ListTile(
                  title: const Text('Hello'),
                  subtitle: const Text('World'),
                  tileColor: Colors.lightBlue[50],
                )),
            const SizedBox(height: 80.0),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(50.0),
                  child: const Card(
                    child: Text(
                      'Hello',
                      style: TextStyle(letterSpacing: 10.0, height: 1.5),
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SelectionTemp())), child: Text('NEXT'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
