import 'package:baddie_master/libs/firebase_auth/auth.dart';
import 'package:baddie_master/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../values/values.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Column(
          children: [
            TextButton(
                onPressed: () async {
                  await authService.logout();
                  if (!authService.isLoggedIn()) {
                    await Get.offAll(AuthScreen());
                  }
                },
                child: const Text(Strings.logOut))
          ],
        ),
      ),
    ));
  }
}
