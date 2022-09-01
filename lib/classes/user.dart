class UserModel {
  String? uid;
  String? email;
  String? username;
  String? phoneNumber;

  UserModel({this.uid, this.email, this.username, this.phoneNumber});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      username: map['username'],
      phoneNumber: map['phoneNumber'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'username': username,
      'phoneNumber': phoneNumber,
    };
  }
}