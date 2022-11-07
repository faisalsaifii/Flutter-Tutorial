import 'package:flutter/material.dart';
import 'package:flutter_tutorial/my_class.dart';

class NameOfClass extends StatelessWidget {
  final MyClass e;
  final Function del;
  NameOfClass({required this.e, required this.del});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            e.name,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${e.age}',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(Icons.delete),
              label: Text("Delete Class"))
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
