class ResponseUserModel {
  int? id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? image;
  String? token;

  ResponseUserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    gender = json['gender'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    image = json['image'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      "username": username,
      "email": email,
      "gender": gender,
      "firstName": firstName,
      "lastName": lastName,
      "image": image,
      "token": token,
    };
  }
}
