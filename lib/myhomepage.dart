import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smanagment/model.dart';

class MyHomePage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    
    // ignore: non_constant_identifier_names
    final model = Provider.of<Model>(context);
    return (Scaffold(
      appBar: AppBar(
        title: const Text(
          'State Management',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(builder: (context, nModel, child) {
              return Text(
                model.title,
                style: TextStyle(fontSize: 25),
              );
            }),
            const SizedBox(
              height: 15,
            ),
            FlatButton(
              onPressed: () {
                model.ChangeValue();
              },
              child: const Text(
                'Change',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
            )
          ],
        ),
      ),
    ));
  }
}




