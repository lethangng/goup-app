import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
    ],
  );
  static Future<GoogleSignInAccount?> login() => googleSignIn.signIn();
}
