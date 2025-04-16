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
                padding: EdgeInsets.all(16.sp),
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 25.h, child: CircleAvatar()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hello Abhi..',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontFamily: 'ADLaM',
                                    ),
                                  ),
                                  Text(
                                    'How are today ?..',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11.sp,
                                      fontFamily: 'ADLaM',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 10.sp,
                            children: [
                              Image.asset(
                                'assets/images/calendar.png',
                                height: 16.h,
                                width: 16.w,
                              ),
                              Text(
                                'Jan 05 2025',
                                style: TextStyle(
                                  fontFamily: 'ADLaM',
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/bg-img.png',
                              height: 120.h,
                              width: 160.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              // color: Colors.amber,
                              child: Column(
                                spacing: 10.sp,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Take Control of \nYour day',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: 22.sp,
                                      fontFamily: 'PermanentMarker',
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Turn your goals into daily victories with \nour simple and powerful to-do app',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: 'ADLaM',
                                      color: Colors.white,
                                      fontSize: 9.5.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(16.sp),
              width: Get.width,
              height: 460.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55.sp),
                  topRight: Radius.circular(55.sp),
                ),
                gradient: LinearGradient(
                  begin: Alignment(0.50, -0.00),
                  end: Alignment(0.50, 1.00),
                  colors: [const Color(0xFFD7E2E6), Colors.white],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    child: Text(
                      'Recent Task',
                      style: TextStyle(
                        fontFamily: 'ADLaM',
                        color: Colors.black,
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.h),
                    width: Get.width,
                    padding: EdgeInsets.all(16.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Flutter Task',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '16/04/2025',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10.h),
                              // color: Colors.amber,
                              width: Get.width * .6.sp,
                              child: Text(
                                'Study flutter UI, Stage-management ,\nAPI Integration ,',
                                style: TextStyle(fontSize: 12.sp),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(24, 47, 53, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.sp),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                vertical: 2.h,
                                horizontal: 12.w,
                              ),

                              child: Text(
                                'High',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(LucideIcons.fileEdit, size: 16.sp),
                              Icon(LucideIcons.trash2, size: 16.sp),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
