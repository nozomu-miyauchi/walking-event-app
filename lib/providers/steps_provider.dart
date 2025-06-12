import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/steps.dart';

part 'steps_provider.g.dart';

@riverpod
class StepsList extends _$StepsList {
  @override
  List<Steps> build() {
    return const [
      // sample
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
  }

  void setStepsList(List<Steps> stepList) {
    state = stepList;
  }
}
