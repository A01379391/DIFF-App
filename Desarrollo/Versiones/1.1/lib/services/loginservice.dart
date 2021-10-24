import 'package:dif/models/loginusermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginService {

  LoginUserModel? _userModel;

  LoginUserModel? get loggedInUserModel => _userModel;

  Future<bool> signInWithGoogle() async {
    // Trigger the authentication flow
    GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if(googleUser == null) {
      return false;
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    // Create a new credencial
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken
    );

    // Once signed in, return the USerCredential
    UserCredential userCreds = await FirebaseAuth.instance.signInWithCredential(credential);
    if(userCreds != null){
      _userModel = LoginUserModel(
          displayName: userCreds.user!.displayName,
          email: userCreds.user!.email,
          photoUrl: userCreds.user!.photoURL
      );
    }

    return true;
  }

  signOut() async {
    await GoogleSignIn().signOut();
    _userModel = null;
  }
}