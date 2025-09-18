import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;
  const ExpenseItem(this.expense, {super.key});

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              expense.title,
            ),
            SizedBox(height: 4),
            Text('${categoryIcons[expense.category]} ${expense.category.name[0].toUpperCase()}${expense.category.name.substring(1)}!'),
            SizedBox(height: 16),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.calendar_month),
                    SizedBox(width: 8),
                    Text(
                      '${expense.date.day}/${expense.date.month}/${expense.date.year}',
                    ),
                  ],
                ),
                const Spacer(),
                Text('R ${expense.amount.toStringAsFixed(2)}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
