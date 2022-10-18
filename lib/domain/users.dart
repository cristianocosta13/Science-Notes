class Users {
  late String image;
  late String email;
  late String password;
  late String name;
  late String username;
  late String birthdate;


  Users({
    required this.image,
    required this.email,
    required this.password,
    required this.name,
    required this.username,
    required this.birthdate,
  });

  Users.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    birthdate = json['birthdate'];
    image = json['image'];
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    data['birthdate'] = birthdate;
    data['image'] = image;
    data['name'] = name;
    data['email'] = email;
    return data;
  }
}
