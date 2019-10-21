import 'package:flutter/material.dart';
import './model/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> allTransactions;

  TransactionList(this.allTransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.black,width: 2,),
        border: Border.all(color: Theme.of(context).primaryColor,width: 2,),
      ),
      child: ListView.builder(
          itemCount: allTransactions.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3)),
                      child: Text(
                        '\$ ${allTransactions[index].amount.toString()}',
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
                          allTransactions[index].name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          allTransactions[index].description,
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
            );
          }),
    );
  }
}
