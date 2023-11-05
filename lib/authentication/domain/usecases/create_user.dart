import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture_app/authentication/domain/repositories/authentation_repository.dart';
import 'package:flutter_clean_architecture_app/core/usecase/usecase.dart';
import '../../../core/utils/typedef.dart';

class CreateUser extends UseCaseWithParams<void ,CreateUserParams>{
  const CreateUser(this._repository);
  final AuthenticationRepository _repository;

  @override
  ResultFuture call(CreateUserParams params) =>
      _repository.createUser(name: params.name, createAt: params.createAt, avatar: params.avatar);

}

class CreateUserParams extends Equatable{
   const CreateUserParams({
     required this.createAt,
     required this.name,
     required this.avatar
   });
   final String name;
   final String createAt;
   final String avatar;

  @override
  List<Object?> get props => [createAt,name,avatar];
}