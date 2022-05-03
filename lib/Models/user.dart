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
    level = json['level'];
    password = json['password'];
    photoUrl = json['photoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = email;
    data['fullName'] = fullName;
    data['level'] = level;
    data['password'] = password;
    data['photoUrl'] = photoUrl;
    return data;
  }
}
