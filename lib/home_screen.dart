import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_widgets/form.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
                const SizedBox(width: 15.0),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => FormScreen())),
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
        title: const Text('Sample App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {}, child: const Text('Elevated Button')),
            const SizedBox(height: 30.0),
            FlatButton(onPressed: () {}, child: const Text('Flat Button')),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Text(
              'Hello World',
              style: TextStyle(fontSize: 18.0, fontFamily: 'Poppins-Black'),
            ),
            Divider(
              height: 15.0,
              color: Colors.red,
            ),
          ],
        ),
      ),
      bottomSheet: ElevatedButton(
          onPressed: _showBottom, child: const Text('Click Here')),
    );
  }
}
