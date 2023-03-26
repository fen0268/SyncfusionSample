import 'package:flutter/material.dart';

import 'syncfusion/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale('ja', 'JP'), // 対象とする言語と地域を指定する
      ],
      home: HomePage(),
    );
  }
}
