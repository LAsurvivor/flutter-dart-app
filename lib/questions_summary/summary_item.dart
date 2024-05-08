import 'package:first_app/questions_summary/questions_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(
    this.itemData, {
    super.key,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['correct_answer'] == itemData['user_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemData['question'] as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 5),
              Text(itemData['user_answer'] as String,
                  style: const TextStyle(
                    color: Colors.red,
                  )),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
