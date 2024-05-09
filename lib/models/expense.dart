import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work,
}

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  //
  // factory Expense.fromJson(Map<String, dynamic> json) {
  //   return Expense(
  //     title: json['title'],
  //     amount: json['amount'],
  //     date: DateTime.parse(json['date']),
  //   );
  // }
  //
  // Map<String, dynamic> toJson() => {
  //       'id': id,
  //       'title': title,
  //       'amount': amount,
  //       'date': date.toIso8601String(),
  //     };
}
