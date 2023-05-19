

class User{
  String email="";
  String phone="";
  String address="";

  User({required this.email, required this.address});
  User.from({required this.email,required this.phone, required this.address});

  User.fromJson(Map<String, dynamic>json)
       :email = json["email"],
        phone = json["phone"],
        address = json["address"];

  Map<String, dynamic> toJson() =>{
    "email":email,
    "phone":phone,
    "address":address,
  };
}