import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DrepoFirebaseUser {
  DrepoFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

DrepoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DrepoFirebaseUser> drepoFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<DrepoFirebaseUser>((user) => currentUser = DrepoFirebaseUser(user));
