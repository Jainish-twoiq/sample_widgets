import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sample_widgets/listview.dart';

class ButtonDemo extends StatefulWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  String val = "1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Demo'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            children: [
              // Checkbox(value: _value1, onChanged: _value1Change),
              RadioListTile(
                value: " 1",
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                    print(val);
                  });
                },
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text('Item 1'),
              ),
              RadioListTile(
                value: " 2",
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value.toString();
                    print(val);
                  });
                },
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text('Item 2'),
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Previous')),
                  const Expanded(child: SizedBox(width: 150.0)),
                  ElevatedButton(
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ListViewTemp())),
                      child: const Text('Next')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
