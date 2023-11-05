import 'package:equatable/equatable.dart';

class User extends Equatable{

  const User({
    required  this.id,
    required this.creareAt,
    required this.name,
    required this.avatar
   });

  final int id;
  final String creareAt;
  final String name;
  final String avatar;

  @override
  List<Object?> get props =>[id];
}