import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:todo/controller/todo_controller.dart';
import 'package:todo/model/todo_model.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//   final controller = Get.put(TodoController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Hellow abhi'),
//             ElevatedButton(onPressed: () {
//               controller.getData();
//             }, child: Text('Get data')),

//             Obx((){
//               return Column(
//                 children: [
//                  controller.todo.isEmpty?SizedBox.shrink(): Text(controller.todo[2].description??""),
//                   ListView.builder(
//                     itemCount: controller.todo.length,
//                     shrinkWrap: true,
//                     itemBuilder: (BuildContext context, int index){
//                      TodoModel data = controller.todo[index];
//                     return Text(data.description??"");
//                   }),
//                 ],
//               );
//             })
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                width: Get.width,
                height: Get.height * .4,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [const Color(0xFF0E1B1F), const Color(0xFF3C7385)],
                  ),
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Row(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Container(
                          margin:EdgeInsets.only(top: 6),
                          height: 25.h,
                          child: CircleAvatar()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text('Hello Abhi',style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                            ),),
                            Text('How are today ?..'
                            ,style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,)
                            )
                        ],
                      ),
                      ],
                     ),
                     Icon(LucideIcons.calendar)
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: Get.width,
              height: 500.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(62),
                  topRight: Radius.circular(62)
                ),
                gradient: LinearGradient(
                  
                  begin: Alignment(0.50, -0.00),
                  end: Alignment(0.50, 1.00),
                  colors: [const Color(0xFFD7E2E6), Colors.white],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
