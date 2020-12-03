import 'package:firebase_auth/firebase_auth.dart' as firebaseUser;
import 'package:notes/domain/auth/user.dart';
import 'package:notes/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebaseUser.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
