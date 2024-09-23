// FirebaseAuth.instance
//   .idTokenChanges()
//   .listen((User? user) {
//     if (user == null) {
//       print('User is currently signed out!');
//     } else {
//       print('User is signed in!');
//     }
//   });

//   // Disable persistence on web platforms. Must be called on initialization:
// final auth = FirebaseAuth.instanceFor(app: Firebase.app());
// // To change it after initialization, use `setPersistence()`:
// await auth.setPersistence(Persistence.LOCAL);

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final _firebaseInstance = FirebaseAuth.instance;

  bool isLoggedIn() {
    return _firebaseInstance.currentUser == null;
  }

  Future<String> getAccessToken() async {
    final token = await _firebaseInstance.currentUser?.getIdToken();
    if (token == null) {
      throw "User is not logged in";
    }
    return token;
  }

  Future<UserCredential> signInWithGoogle({bool isNew = false}) async {
    // Trigger the authentication flow
    final GoogleSignIn googleSignIn = GoogleSignIn();
    if (isNew) {
      googleSignIn.disconnect();
    }
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await _firebaseInstance.signInWithCredential(credential);
  }

  Future<void> logout() async {
    _firebaseInstance.signOut();
  }

  Future signUp() async {}
}
