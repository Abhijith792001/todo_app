import 'dart:convert';

import 'package:get/get.dart';
import 'package:todo/model/todo_model.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class TodoController extends GetxController {
  var todo = <TodoModel>[].obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  

  Future getData() async {
    final response = await dio.get('http://192.168.151.127:3000/api/todos');
    // print(response);

      if (response.statusCode == 200) {
        print(response.data);
        var decoded = response.data;
        print(decoded);
        
            // List<TodoModel>f.map((e) => TodoModel.fromJson(e)).toList() ;
            List<TodoModel> _passList = List<TodoModel>.from(
          decoded.map((data) => TodoModel.fromJson(data)));
          todo.addAll(_passList);
        // Get.snackbar('Get', 'message');
        // todo.value = data as List<TodoModel>;
      }
   
  }
}


class NavigationController extends GetxController{
  var currentIndex =0.obs;
  void changeIndex(int index){
    currentIndex.value = index;
  }
}