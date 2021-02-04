import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/number_data.dart';

import 'next_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<NumberData>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: [
              Text(
                data.value.toString(),
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              Container(
                margin: EdgeInsets.only(top: 18),
                child: RaisedButton(
                  onPressed: () {
                    data.increase();
                  },
                  child: Text(
                    'Increase',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NextScreen()));
                  },
                  child: Text(
                    'Go Next',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
