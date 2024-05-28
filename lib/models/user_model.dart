class UserModel {
  String name;
  String email;
  String password;
  String image;
  String id;

  bool status;


  UserModel({required this.name, required this.email, required this.password,required this.image,
     required this.id,required this.status,});

  Map<String, dynamic> toMap() {
    return {
      "name": this.name,
      "email": this.email,
      "password": this.password,
      "image": this.image,
      "id":this.id,

      "status":this.status,

    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map["name"] ?? "",
      email: map["email"] ?? "",
      password: map["password"] ?? "",
      image: map["image"] ?? "",
      id: map ["id"]??"",
      status: map["status"]??"",

    );
  }

  UserModel copyWith({
    String? name,
    String? email,
    String? password,
    String? image,
    String? id,
    bool? status,

  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      image: image ?? this.image,
      id: id??this.id,
      status: status??this.status,
    );
  }
}
