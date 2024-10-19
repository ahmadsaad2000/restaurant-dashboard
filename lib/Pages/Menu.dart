import 'package:flutter/material.dart';
import 'package:rest_daschbord/core/resource/color_manager.dart';
import 'package:rest_daschbord/core/resource/image_manager.dart';
import 'package:rest_daschbord/core/resource/size_manager.dart';
import 'package:rest_daschbord/core/widget/SideMenu/SideMenu.dart';

class MenuItem {
  final String foodName;
  final String foodDescription;
  final String foodImage;
  final double foodPrice;

  MenuItem({
    required this.foodName,
    required this.foodDescription,
    required this.foodImage,
    required this.foodPrice,
  });
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  Future<List<MenuItem>>? menuItems;

  @override
  void initState() {
    super.initState();

    // قائمة العناصر الوهمية
    menuItems = Future.value([
      MenuItem(
        foodName: 'بيتزا مارغريتا',
        foodDescription:
            'بيتزا إيطالية كلاسيكية مع صلصة الطماطم وجبنة الموزاريلا.',
        foodImage: AppImageManager.p,
        foodPrice: 8.99,
      ),
      MenuItem(
        foodName: 'برغر لحم',
        foodDescription: 'برغر لحم مع خس، طماطم، جبنة، وصوص خاص.',
        foodImage: AppImageManager.b,
        foodPrice: 5.99,
      ),
      MenuItem(
        foodName: 'سلطة سيزر',
        foodDescription:
            'سلطة مع خس، دجاج مشوي، جبنة بارميزان، وقطع توست مقرمش.',
        foodImage: AppImageManager.s,
        foodPrice: 4.99,
      ),
      MenuItem(
        foodName: 'سوشي رولز',
        foodDescription: 'رولات سوشي مكونة من سمك السلمون، الأفوكادو، والأرز.',
        foodImage: AppImageManager.so,
        foodPrice: 12.99,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(
            child: Text('قائمة الطعام'),
          ),
          backgroundColor: AppColorManager.grayColor,
        ),
        body: Row(
          children: [
            Expanded(child: SideMenu(), flex: 1),
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.only(top: AppHeightManager.h3),
                child: FutureBuilder<List<MenuItem>>(
                  future: menuItems,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<MenuItem>? food = snapshot.data;
                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // عدد الأعمدة
                          crossAxisSpacing: 10.0, // المسافة الأفقية بين العناصر
                          mainAxisSpacing: 10.0, // المسافة الرأسية بين العناصر
                          childAspectRatio:
                              1.3, // نسبة العرض إلى الارتفاع لكل عنصر
                        ),
                        itemCount: food!.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: AppColorManager.backColor,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: AppHeightManager.h20,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      food[index].foodImage,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          food[index].foodName,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 4.0),
                                        Text(food[index].foodDescription),
                                        SizedBox(height: 8.0),
                                        Text(
                                          '${food[index].foodPrice.toStringAsFixed(2)} \P\S',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                          child: Text('حدث خطأ في جلب بيانات المينيو'));
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
