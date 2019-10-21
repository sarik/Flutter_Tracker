import 'package:flutter/material.dart';
import './model/transaction.dart';

class TransactionListOld extends StatelessWidget {
  final List<Transaction> allTransactions;

  TransactionListOld(this.allTransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: allTransactions
            .map((tx) => (Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(16, 0,0,0),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                          child: Text(
                            '\$ ${tx.amount.toString()}',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              tx.name,
                         
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              tx.description,
                             
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )))
            .toList(),
      ),
    );
  }
}
