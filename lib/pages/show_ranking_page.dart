import 'package:flutter/material.dart';
import '../entities/steps.dart';

class ShowRankingPage extends StatelessWidget {
  const ShowRankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 実際は歩数トップ10をバックエンドから取得してくる
    final List<Steps> top10walkerList = [
      Steps(employeeId: '001', name: 'name001', steps: 10000, rank: 1),
      Steps(employeeId: '002', name: 'name002', steps: 9000, rank: 2),
      Steps(employeeId: '003', name: 'name003', steps: 8000, rank: 3),
      Steps(employeeId: '004', name: 'name004', steps: 7000, rank: 4),
      Steps(employeeId: '005', name: 'name005', steps: 6000, rank: 5),
      Steps(employeeId: '006', name: 'name006', steps: 5000, rank: 6),
      Steps(employeeId: '007', name: 'name007', steps: 4000, rank: 7),
      Steps(employeeId: '008', name: 'name008', steps: 3000, rank: 8),
      Steps(employeeId: '009', name: 'name009', steps: 2000, rank: 9),
      Steps(employeeId: '010', name: 'name010', steps: 1000, rank: 10),
    ];

    // 歩数トップ10を表示するウィジェット
    Widget top10WalkerList() {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          final walker = top10walkerList[index];

          return ListTile(
            leading: Text((index + 1).toString()),
            title: Text(walker.name),
            subtitle: Text(walker.steps.toString()),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Ranking')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('戻る'),
      ),
      body: Scrollbar(thumbVisibility: true, child: top10WalkerList()),
    );
  }
}
