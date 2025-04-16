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
  HomeScreen({super.key});

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
                              width: 120.w,
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
                                      fontSize: 20.sp,
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
                                      fontSize: 9.sp,
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
              padding: EdgeInsets.only(top: 16.sp, left: 16.sp, right: 16.sp),
              width: Get.width,
              height: 400.h,
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
                  Expanded(
                    child: ListView.builder(
                      itemCount: 20,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10.h),
                          width: Get.width,
                          padding: EdgeInsets.all(16.sp),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.sp),
                            ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Flutter Task',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                  Text(
                                    '16/04/2025',
                                    style: TextStyle(
                                      fontSize: 12.5.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.only(top: 10.h),
                                      // color: Colors.amber,
                                      width: 230.w,
                                      child: Text(
                                        'Study flutter UI, Stage-management API .. ',
                                        style: TextStyle(
                                          fontSize: 12.5.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(24, 47, 53, 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(9.sp),
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        vertical: 3.h,
                                        horizontal: 0.w,
                                      ),

                                      child: Text(
                                        'Low',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(LucideIcons.fileEdit, size: 16.sp),
                                    Icon(LucideIcons.trash2, size: 16.sp),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 30.sp,
        child: Icon(LucideIcons.filePlus2, color: Colors.white),
        backgroundColor: Color(0xFF0E1B1F),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30.sp)),
        child: BottomAppBar(
          color: Color(0xFF0E1B1F),
          shape: CircularNotchedRectangle(),
          notchMargin: 12.0.sp,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 40.sp,
                  children: [
                    Column(
                      children: [
                        Icon(LucideIcons.home, color: Colors.white),
                        Text('Home', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(LucideIcons.heart, color: Colors.white),
                        Text('Habit', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
                Row(
                  spacing: 40.sp,
                  children: [
                    Column(
                      children: [
                        Icon(LucideIcons.bookOpenCheck, color: Colors.white),
                        Text('Task', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(LucideIcons.user, color: Colors.white),
                        Text('Profile', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
