import 'package:baddie_master/libs/firebase_auth/auth.dart';
import 'package:baddie_master/main.dart';
import 'package:baddie_master/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              "assets/images/welcome.svg",
              semanticsLabel: 'welcome hehe',
              height: height * 0.6,
            ),
            Column(
              children: [
                Text(
                  Strings.welcomeTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  Strings.welcomeSubtitle,
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                      onPressed: () async {
                        final userCredential =
                            await authService.signInWithGoogle();
                        print(userCredential.additionalUserInfo?.isNewUser);
                        if (userCredential.user != null) {
                          Get.off(const MyHomePage());
                        }
                      },
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          foregroundColor: Colors.black54,
                          padding: const EdgeInsets.symmetric(vertical: 8.0)),
                      child: Text(Strings.login.toUpperCase())),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () async {
                        final userCredential =
                            await authService.signInWithGoogle(isNew: true);
                        if (userCredential.user != null) {
                          Get.off(const MyHomePage());
                        }
                      },
                      style: OutlinedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black54,
                          padding: const EdgeInsets.symmetric(vertical: 8.0)),
                      child: Text(Strings.signUp.toUpperCase())),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class OutlineButtonTheme {
  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          foregroundColor: Colors.black54,
          padding: const EdgeInsets.symmetric(vertical: 8.0)));
  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          foregroundColor: Colors.black54,
          padding: const EdgeInsets.symmetric(vertical: 8.0)));
}

class ElevatedButtonTheme {
  static final lightOutlineButtonTheme = ElevatedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black54,
          padding: const EdgeInsets.symmetric(vertical: 8.0)));
  static final darkOutlineButtonTheme = ElevatedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black54,
          padding: const EdgeInsets.symmetric(vertical: 8.0)));
}
