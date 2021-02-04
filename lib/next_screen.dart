import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/number_data.dart';

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<NumberData>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Next Screen'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  data.value.toString(),
                  style: TextStyle(color: Colors.pink, fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18),
                child: RaisedButton(
                  onPressed: () {
                    data.decrease();
                  },
                  child: Text(
                    'Decrease',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
