import 'package:flutter_clean_architecture_app/core/utils/typedef.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository{
   const AuthenticationRepository();
   ResultVoid createUser({
      required String name,
      required String createAt,
      required String avatar
   });
   ResultFuture<List<User>> getUsers();
}