import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';

import '../values/values.dart';

class ScoreBoardScreen extends StatefulWidget {
  const ScoreBoardScreen({super.key});

  @override
  State<ScoreBoardScreen> createState() => _ScoreBoardScreenState();
}

class _ScoreBoardScreenState extends State<ScoreBoardScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    "1",
                    textAlign: TextAlign.center,
                  )),
                  VerticalDivider(
                    color: Colors.black26,
                  ),
                  Expanded(child: Text("1", textAlign: TextAlign.center))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () => {}, child: const Text(Strings.edit)),
                ElevatedButton(
                    onPressed: () => {}, child: const Text(Strings.end)),
                TextButton(
                    onPressed: () => {}, child: const Text(Strings.edit)),
                TextButton(
                    onPressed: () => {Get.back()},
                    child: const Text(Strings.exit)),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
}
