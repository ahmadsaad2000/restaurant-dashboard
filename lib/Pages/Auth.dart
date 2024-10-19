import 'package:flutter/material.dart';
import 'package:rest_daschbord/core/resource/color_manager.dart';
import 'package:rest_daschbord/core/resource/image_manager.dart';
import 'package:rest_daschbord/core/resource/size_manager.dart';
import 'package:rest_daschbord/core/widget/AuthWidgets%20.dart';
import 'package:rest_daschbord/core/widget/container/decorated_container.dart';
import 'package:rest_daschbord/core/widget/text/app_text_widget.dart';
// =import 'package:flutter/services.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 180, 176, 176),
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppRadiusManager.r25),
            child: DecoratedContainer(
              color: AppColorManager.dotGrey,
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(183, 146, 141, 141),
                    offset: Offset(2, 2))
              ],
              height: AppHeightManager.h90,
              width: AppWidthManager.w40,
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 200,
                      child: Image.asset(AppImageManager.DeuxRes),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Text(
                        "the code will send to your number",
                        style: TextStyle(
                            height: 3,
                            fontSize: 20,
                            color: AppColorManager.grayColor),
                      ),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AuthWidgets.buildInputField(context),
                      ],
                    ),
                    DecoratedContainer(
                      color: Color.fromARGB(255, 255, 0, 0),
                      height: AppHeightManager.h8,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromARGB(181, 255, 0, 0))),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/AllReservation'),
                          child: AppTextWidget(
                            text: 'Verfy and create',
                            color: AppColorManager.white,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
