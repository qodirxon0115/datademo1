
import 'package:datademo2/model/user_model.dart';
import 'package:get_storage/get_storage.dart';

class GetService{
  static var box = GetStorage();

  static store(User user) async{
    box.write("user", user.toJson());
  }

  static User load(){
    var user = User.fromJson(box.read("user"));
    return user;
  }

  static void remove() async{
    box.remove("user");
  }
}