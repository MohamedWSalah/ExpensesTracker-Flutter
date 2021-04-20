import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children: transactions.map((e) {
      return Card(
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, style: BorderStyle.solid, color: Colors.purple),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Text(
                '\$ ${e.amount.toString()}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  e.title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(DateFormat().add_yMMMMd().format(e.date),
                    style: TextStyle(color: Colors.grey, fontSize: 13))
              ],
            )
          ],
        ),
      );
    }).toList()));
  }
}
