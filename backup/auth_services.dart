// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:notes/Model/user.dart';
// import 'package:notes/backup/user_service.dart';

// class AuthServices {
//   GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

//   Future<SignInSignOutResult> signIn() async {
//     try {
//       await _googleSignIn.signIn();
//       User user = User(
//           id: _googleSignIn.currentUser.id,
//           name: _googleSignIn.currentUser.displayName,
//           email: _googleSignIn.currentUser.email,
//           photoProfile: _googleSignIn.currentUser.photoUrl);
//       await UserServices.updateUser(user);
//       return SignInSignOutResult(user:user);
//     } catch (message) {
//       return SignInSignOutResult(message: message);
//     }
//   }
//   Future<void> signOut()async{
//     await _googleSignIn.signOut();
//   }
// }

// class SignInSignOutResult {
//   final User user;
//   final String message;

//   SignInSignOutResult({this.user, this.message});
// }
