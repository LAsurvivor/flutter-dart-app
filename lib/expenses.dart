import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
      ),
      body: const Column(
        children: <Widget>[
          Card(
            elevation: 5,
            child: Text('Chart!'),
          ),
          Card(
            elevation: 5,
            child: Text('List of transactions'),
          ),
        ],
      )
    );
  }
}