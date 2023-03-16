import 'package:flutter_ddd/domain/auth/value_objects.dart';

abstract class IAUthFacade {
  Future<void> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<void> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password});
  Future<void> signInWithGoogle();
}
