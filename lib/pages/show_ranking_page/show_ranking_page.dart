import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../entities/steps.dart';
import '../../providers/steps_provider.dart';

import './top_10_walker_list.dart';

class ShowRankingPage extends HookConsumerWidget {
  const ShowRankingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: 実際は歩数トップ10をバックエンドから取得してくる
    //
    // APIリクエストを投げてトップ10を取得して、それでStateを更新する
    // HooksのuseEfferctでAPI実行する想定
    final stepsListTop10 = ref.watch(stepsListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Ranking')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('戻る'),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        child: Top10WalkerList(stepList: stepsListTop10),
      ),
    );
  }
}
