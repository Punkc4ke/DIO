import 'package:dioProject/models/user.dart';
import 'package:dioProject/utils/api_util.dart';
import 'package:dio/dio.dart';

class UserUtils {
  Future<bool> updateProfile(String userName, String email, String oldPassword, String newPassword) async {
    try {
      Map<String, dynamic> data;
      data = {"userName": userName, "email": email};
      await ApiUtils.S!.dio.post("/user", data: data);
      if(newPassword != "") {
        await ApiUtils.S!.dio.put("/user", queryParameters: {"oldPassword": oldPassword, "newPassword": newPassword});
      }
      return true;
    }
    on DioError catch(error) {
      return false;
    }
  }

  Future<User> getUser() async{
    try {
      Response response = await ApiUtils.S!.dio.get("/user");
      User user = User.fromJson(response.data["data"]);
      return user;
    } on DioError catch(error) {
      return User(email: "", password: "", userName: "");
    }
  }
}