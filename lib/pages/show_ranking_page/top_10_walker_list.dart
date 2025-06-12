import 'package:flutter/material.dart';
import '../../entities/steps.dart';

class Top10WalkerList extends StatelessWidget {
  const Top10WalkerList({super.key, required this.stepList});

  final List<Steps> stepList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        final walker = stepList[index];

        return ListTile(
          leading: Text((index + 1).toString()),
          title: Text(walker.name),
          subtitle: Text(walker.steps.toString()),
        );
      },
    );
  }
}
