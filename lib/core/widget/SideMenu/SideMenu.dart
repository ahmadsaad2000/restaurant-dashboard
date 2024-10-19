import 'package:flutter/material.dart';
import 'package:rest_daschbord/core/resource/color_manager.dart';
import 'package:rest_daschbord/core/resource/image_manager.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  String restaurantName = "Somar Restaurant";
  // String restaurantImageUrl = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      color: AppColorManager.backColor,
      child: ListView(
        children: [
          Container(
            color: AppColorManager.rrrColor,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(AppImageManager.res),
                  backgroundColor: AppColorManager.whiteColor,
                ),
                SizedBox(height: 15),
                Text(
                  restaurantName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: AppColorManager.whiteColor),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_4),
            title: Text(
              'معلومات المطعم',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColorManager.grayColor),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/Info');
            },
          ),
          ListTile(
              leading: Icon(Icons.event),
              title: Text(
                'الحجوزات',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColorManager.grayColor),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/AllReservation');
              }),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text(
              'قائمة الطعام',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColorManager.grayColor),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/Menu');
            },
          ),
        ],
      ),
    );
  }
}
