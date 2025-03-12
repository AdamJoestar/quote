import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                quote.text,
                style: TextStyle(fontSize: 20, color: Colors.grey[800]),
              ),
            ),
            SizedBox(height: 6),
            Center(
              child: Text(
                quote.author,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('delete quote'),
            )
          ],
        ),
      ),
    );
  }
}
