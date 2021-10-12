import 'package:flutter/material.dart';

class SelectionTemp extends StatefulWidget {
  const SelectionTemp({Key? key}) : super(key: key);

  @override
  _SelectionTempState createState() => _SelectionTempState();
}

enum Animals { Cat, Dog, Fish, Lizard, Bird }

class _SelectionTempState extends State<SelectionTemp> {
  Animals selected = Animals.Cat;
  String value = 'Make a Selection';
  List<PopupMenuItem> items = [];

  @override
  void initState() {
    Animals.values.forEach((v) {
      print('value: $v, index: ${v.index}');
      items.add(PopupMenuItem(
        child: Text(v.toString()),
        value: v,
      ));
    });
    // for (int i = 0; i < Animals.values.length; i++) {
    //   print(Animals.Cat);
    //   items.add(PopupMenuItem(
    //     child: const Text('getDisplay(animal)'),
    //     value: Animals.values,
    //   ));
    //   print(items[i]);
    // }
    /*for (Animals animal in Animals.values) {

    }*/
    super.initState();
  }

  void onSelected(Animals animal) {
    setState(() {
      selected = animal;
      value = "You Selected ${getDisplay(animal)}";
    });
  }

  String getDisplay(Animals animal) {
    int index = animal.toString().indexOf('');
    index++;
    return animal.toString().substring(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Menu '),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                child: Text(value),
              ),
              PopupMenuButton(
                  child: Icon(Icons.input),
                  initialValue: Animals.Cat,
                  onSelected: (onSelected) {},
                  itemBuilder: (context) => items/*[
                        PopupMenuItem(
                          child: Text("First"),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text("Second"),
                          value: 2,
                        )
                      ]*/)
            ],
          ),
        ),
      ),
    );
  }
}
