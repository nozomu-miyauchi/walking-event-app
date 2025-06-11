import 'package:flutter/material.dart';

class ShowRankingPage extends StatelessWidget {
  const ShowRankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ranking')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('戻る'),
          ),
        ],
      ),
    );
  }
}
