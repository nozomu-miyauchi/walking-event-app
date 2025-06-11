import 'package:flutter/material.dart';
import 'package:health/health.dart';

class GetStepCountPage extends StatefulWidget {
  const GetStepCountPage({super.key});

  @override
  State<GetStepCountPage> createState() => _GetStepCountPageState();
}

class _GetStepCountPageState extends State<GetStepCountPage> {
  int? _steps = 0; // 歩数
  bool _isAuthorized = false; // ユーザから情報提供の許可を得ているかどうか
  final health = Health();

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  // ヘルスケア情報に対する許可がされているかを確認する関数
  Future<void> _checkPermissions() async {
    // 取得・利用するヘルスケア情報(歩数)
    final types = [HealthDataType.STEPS];
    // アプリに与えるヘルスケア情報に対する権限(歩数に関してはREADのみで十分のはず)
    final permissions = [HealthDataAccess.READ];
    bool? hasPermissions = await health.hasPermissions(
      types,
      permissions: permissions,
    );

    setState(() {
      _isAuthorized = hasPermissions ?? false;
    });
  }

  // ヘルスケア情報に対する許可を求める関数
  Future<void> _requestPermissions() async {
    // 取得・利用するヘルスケア情報(歩数)
    final types = [HealthDataType.STEPS];
    // アプリに与えるヘルスケア情報に対する権限(歩数に関してはREADのみで十分のはず)
    final permissions = [HealthDataAccess.READ];
    try {
      _isAuthorized = await health.requestAuthorization(
        types,
        permissions: permissions,
      );

      setState(() {});
    } catch (error) {
      // TODO: logging frameworkでログとして出力する
      print("Exeption in requestPermissions: $error");
    }
  }

  // 歩数を取得する
  Future<void> _fetchSteps() async {
    final now = DateTime.now();
    final midnight = DateTime(now.year, now.month, now.day);

    try {
      // 取得日の00:00:00から現在時刻までの歩数を取得
      int? steps = await health.getTotalStepsInInterval(midnight, now);
      setState(() {
        _steps = steps;
      });
    } catch (error) {
      // TODO: logging frameworkでログとして出力する
      print("Exeption in fetchSteps: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TODO: タイトルなんか良い感じのワードに変える(親しみやすさがない)
        title: const Text('歩数計'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!_isAuthorized)
              ElevatedButton(
                onPressed: _requestPermissions,
                child: const Text('歩数データの取得をアプリに許可する'),
              )
            else
              Column(
                children: [
                  const Text('本日の歩数は....', style: TextStyle(fontSize: 24)),
                  Text(
                    '$_steps 歩です！！',
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _fetchSteps,
                    child: const Text('歩数を再計測'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
