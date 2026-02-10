import 'dart:convert';

import 'package:fruite_app/core/services/shared_prefrences_senglton.dart';
import 'package:fruite_app/core/utils/constants.dart';
import 'package:fruite_app/features/auth/data/models/user_model.dart';
import 'package:fruite_app/features/auth/domain/entites/user_entity.dart';

UserEntity getUser(){
  var jsonString=Prefs.getString(kUserData);
  var userEntity =UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}