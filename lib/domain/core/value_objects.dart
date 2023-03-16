import 'package:flutter_ddd/domain/auth/value_objects.dart';
import 'package:flutter_ddd/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

abstract class ValueObjects<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObjects();

  @override
  bool operator ==(covariant ValueObjects other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)'; 
}
