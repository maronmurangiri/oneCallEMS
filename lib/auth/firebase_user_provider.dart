import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ComradehealthFirebaseUser {
  ComradehealthFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ComradehealthFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ComradehealthFirebaseUser> comradehealthFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ComradehealthFirebaseUser>(
      (user) {
        currentUser = ComradehealthFirebaseUser(user);
        return currentUser!;
      },
    );
