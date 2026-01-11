import 'package:flutter_test/flutter_test.dart';
import 'package:spendwise_flutter/models/expense.dart';

void main() {
  test('Expense amount should be positive', () {
    final expense = Expense(
      title: 'Lunch',
      amount: 50.0,
      date: DateTime.now(),
      category: Category.food,
    );

    expect(expense.amount > 0, true);
  });
}
