import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import './pages/get_step_count_page.dart';
import './pages/show_ranking_page.dart';

void main() {
  runApp(MaterialApp.router(routerConfig: _router));
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const GetStepCountPage(),
      routes: [
        GoRoute(
          path: 'ranking',
          builder: (context, state) => const ShowRankingPage(),
        ),
      ],
    ),
  ],
);

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'walking-event-app',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//       ),
//       home: const GetStepCountPage(),
//     );
//   }
// }
