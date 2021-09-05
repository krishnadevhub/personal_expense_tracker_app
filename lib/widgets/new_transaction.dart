import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction({Key? key, required this.addTx}) : super(key: key);

  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // onChanged: (val) => titleInput = val,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (val) => amountInput = val,
            ),
            TextButton(
              onPressed: () {
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: const Text('Add Transaction'),
                color: Colors.cyanAccent,
              ),
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 16),
                primary: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
