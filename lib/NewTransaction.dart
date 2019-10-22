import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tracker/model/transaction.dart';

class NewTransaction extends StatefulWidget {
  final Function _addTransaction;

  NewTransaction(this._addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final nameController = TextEditingController();

  final descController = TextEditingController();

  void handleSubmit() {
    widget._addTransaction(Transaction(
        name: nameController.text,
        description: descController.text,
        amount: double.parse(Random(22).nextDouble().toStringAsFixed(2)),
        date: DateTime.now()));

    //close the topmost scree,currently add new transaction modal
    //context available in state class,hover over it to read more
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              "Task",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            //color: Colors.orangeAccent,
            //decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent,width: 1,)),
            child: TextField(
              controller: nameController,
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
          ),
          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Text(
              "Description",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: TextField(
              controller: descController,
              keyboardType: TextInputType.text,
             // keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black, fontSize: 22),
              onSubmitted: (_) => handleSubmit(),
            ),
          ),
          RaisedButton(
            onPressed: handleSubmit,
            child: Text("Add Transaction"),
          )
        ],
      ),
    );
  }
}
