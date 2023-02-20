import 'package:Suretler/Globals/Utils/log_print.dart';

class User {
  String? email;
  String? fullName;
  int? level;
  String? password;
  String? photoUrl;

  User({this.email, this.fullName, this.level, this.password, this.photoUrl});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    fullName = json['fullName'];
    if (json['level'] == null) {
      level = null;
    } else if (json['level'] is String) {
      try {
        level = int.parse(json['level']);
      } catch (e) {
        logPrint(e.toString());
        level = null;
      }
    } else {
      level = json['level'];
    }
    password = json['password'];
    photoUrl = json['photoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['fullName'] = fullName;
    data['level'] = level;
    data['password'] = password;
    data['photoUrl'] = photoUrl;
    return data;
  }
}
