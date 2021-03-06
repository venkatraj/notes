import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:notes/domain/auth/user.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Option<User>> getSignedInUser();
  Future<void> signOut();
}
