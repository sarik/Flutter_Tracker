import 'package:flutter/foundation.dart';

class Transaction {
  final String name;
  final double amount;
  final DateTime date;
  final String description;

  Transaction(
      {@required this.name,
      @required this.amount,
      @required this.date,
      @required this.description});
}
