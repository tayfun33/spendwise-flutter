import 'package:flutter/material.dart';
import '../models/expense.dart';
import 'expense_item.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;
  final void Function(Expense) onRemove;

  const ExpenseList({
    super.key,
    required this.expenses,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    if (expenses.isEmpty) {
      return const Center(child: Text('Henüz harcama yok'));
    }

    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) {
        return ExpenseItem(
          expense: expenses[index],
          onDelete: () => onRemove(expenses[index]),
        );
      },
    );
  }
}
