import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotes_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Positive anything is better than negative nothing.',
        author: 'Oscar Wild'),
    Quote(
        text: 'Miracles happen to those who believe in them.',
        author: 'Oscar Wild'),
    Quote(
        text:
            'If you are positive, you’ll see opportunities instead of obstacles.',
        author: 'Oscar Wild'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
    );
  }
}
