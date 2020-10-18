import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class User extends Equatable{
  final String id;
  final String name;
  final String email;
  final String photoProfile;

  User({
    this.id,
    @required this.name,
    @required this.email,
    @required this.photoProfile
  });
  @override
  List<Object> get props => [id, name, email, photoProfile];
}