import 'package:flutter/material.dart';

import 'transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: '1', title: 'Chocolate', amount: 10.5, date: DateTime.now()),
    Transaction(id: '2', title: 'Chips', amount: 5, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Moon'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Card(
              color: Colors.blue,
              child: Container(width: double.infinity, child: Text('Chart')),
              elevation: 5,
            ),
            Column(
                children: transactions.map((e) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Text(e.amount.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(e.title),
                        Text(e.date.hour.toString())
                      ],
                    )
                  ],
                ),
              );
            }).toList())
          ],
        ));
  }
}
