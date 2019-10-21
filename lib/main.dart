import 'package:flutter/material.dart';
import 'package:tracker/TransactionsList.dart';
//import 'package:tracker/DisplayTransactions.dart';
import './NewTransaction.dart';
import './model/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePag(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePag extends StatefulWidget {
  final String title;

  MyHomePag({this.title});

  @override
  _MyHomePagState createState() => _MyHomePagState();
}

class _MyHomePagState extends State<MyHomePag> {
  final List<Transaction> allTransations = [
    Transaction(
        name: "first",
        description: "desc1",
        date: DateTime.now(),
        amount: 22.23),
    Transaction(
        name: "second",
        description: "desc2",
        date: DateTime.now(),
        amount: 122.23),
  ];

  void _addTransaction(Transaction tr) {
    setState(() {
      allTransations.add(tr);
    });
  }

  void _startNewTransactionAdd(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (context) {
          //builder: (context) {
          return GestureDetector(
              onTap: () {}, child: NewTransaction(_addTransaction),behavior: HitTestBehavior.opaque,);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () => _startNewTransactionAdd(context),
          )
        ],
      ),
      body: Container(
        child: (ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    //child: DisplayTransactions(),
                    child: TransactionList(allTransations),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
        ),
        onPressed: () => _startNewTransactionAdd(context),
      ),
    );
  }
}
