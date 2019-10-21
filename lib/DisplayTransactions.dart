import 'package:flutter/material.dart';
import 'package:tracker/NewTransaction.dart';
import 'package:tracker/model/transaction.dart';
import './TransactionsList.dart';

class DisplayTransactions extends StatefulWidget {
  @override
  _DisplayTransactionsState createState() => _DisplayTransactionsState();
}

class _DisplayTransactionsState extends State<DisplayTransactions> {
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
       /*  NewTransaction(_addTransaction),
        Container(
          child: TransactionList(this.allTransations),
        ), */
      ],
    );
  }
}
