
class User {

  String? name;
  String? email;
  String? phone;
  String? password;
  String? cpassword;

  User(this.name, this.email, this.phone, this.password, this.cpassword);

  User.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    email = json["email"];
    phone = json["phone"];
    password = json["password"];
    cpassword = json["cpassword"];
  }

  Map<String, dynamic> toJson() => {
    "name" : name, "email" : email, "phone" : phone, "password" : password, "cpassword" : cpassword,
  };

}