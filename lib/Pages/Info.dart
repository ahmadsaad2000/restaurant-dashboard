// import 'package:dashbord_rest/Widgets/SideMenu.dart';
// import 'package:dashbord_rest/theme/AppColorManagers.dart';
// import 'package:flutter/material.dart';

// class Info extends StatefulWidget {
//   const Info({super.key});

//   @override
//   State<Info> createState() => _InfoState();
// }

// class _InfoState extends State<Info> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         title: Center(
//           child: Text('معلومات المطعم '),
//         ),
//         backgroundColor: AppColorManager.grayColor,
//       ),
//       body: Row(
//         children: [
//           Expanded(child: SideMenu(), flex: 1),
//           Expanded(flex: 4, child: Row()),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:rest_daschbord/core/resource/color_manager.dart';
import 'package:rest_daschbord/core/resource/image_manager.dart';
import 'package:rest_daschbord/core/widget/SideMenu/SideMenu.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('معلومات المطعم'),
        ),
        backgroundColor: AppColorManager.grayColor,
      ),
      body: Row(
        children: [
          Expanded(child: SideMenu(), flex: 1),
          Expanded(
            flex: 4,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                // عنصر الصور الأول
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        child: Image.asset(
                          AppImageManager.e,
                          fit: BoxFit.cover,
                        ),
                        height: 200,
                        width: 390,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        child: Image.asset(
                          AppImageManager.ee,
                          fit: BoxFit.fill,
                        ),
                        height: 200,
                        width: 390,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        child: Image.asset(
                          AppImageManager.eee,
                          fit: BoxFit.fill,
                        ),
                        height: 200,
                        width: 390,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                    '  العنوان : GQ2J+QQG, Latakia, Syria',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Icon(
                              Icons.location_pin,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text('  الهاتف :0113267685',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Icon(
                              Icons.phone,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(' الموبايل :9630994191372',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Icon(
                              Icons.stay_current_portrait,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                    ' ساعات العمل:  evryday: 8 AM to 11:55 PM',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Icon(
                              Icons.query_builder,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                    '  الوصف :  👍👍 Delicious food good atmosphere. More expensive than others in the same strip. It has variety of food.  ',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Icon(
                              Icons.description,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text('   عدد الطاولات :   120',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Icon(
                              Icons.table_restaurant,
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text('  التصنيف :  مطعم',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Icon(
                              Icons.style,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
