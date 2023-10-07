// class AuthRemoteDataSource {
//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   Future<String> signIn(String email, String password) async {
//     try {
//       User? firebaseUser = (await _firebaseAuth.signInWithEmailAndPassword(
//               email: email, password: password))
//           .user;

//       return firebaseUser!.uid;
//     } on FirebaseAuthException catch (exception) {
//       if (exception.code == "invalid-email") {
//         throw SignInInvalidEmailException();
//       }
//       throw SignInInvalidCredentialsException();
//     }
//   }

//   Future<String> signUp(String email, String password) async {
//     try {
//       User? firebaseUser = (await _firebaseAuth.createUserWithEmailAndPassword(
//               email: email, password: password))
//           .user;

//       return firebaseUser!.uid;
//     } on FirebaseAuthException catch (exception) {
//       if (exception.code == "email-already-in-use") {
//         throw SignUpEmailAlreadyInUseException();
//       } else if (exception.code == "invalid-email") {
//         throw SignUpInvalidEmailException();
//       } else if (exception.code == "weak-password") {
//         throw SignUpWeakPasswordException();
//       } else {
//         throw SignUpUserEmptyException();
//       }
//     }
//   }

//   Future<String?> getUserEmail() async {
//     User? firebaseUser = _firebaseAuth.currentUser;
//     if (firebaseUser != null) {
//       return firebaseUser.email;
//     }
//     return null;
//   }

//   Future<void> signOut() async {
//     await _firebaseAuth.signOut();
//   }
// }
