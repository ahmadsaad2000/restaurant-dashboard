import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rest_daschbord/Pages/Auth.dart';
import 'package:rest_daschbord/Pages/Info.dart';
import 'package:rest_daschbord/Pages/Menu.dart';
import 'package:rest_daschbord/Pages/Reservations/AllReservation.dart';
import 'package:rest_daschbord/Pages/Reservations/add.dart';

class RestDaschbord extends StatelessWidget {
  const RestDaschbord({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/Auth",
        routes: {
          "/Auth": (context) => const Auth(),
          "/Menu": (context) => Menu(),
          "/AllReservation": (context) => const AllReservation(),
          "/Info": (context) => const Info(),
          "/Add": (context) => const Add()
        },
      );
    });
  }
}
