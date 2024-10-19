import 'package:flutter/material.dart';
import 'package:rest_daschbord/core/resource/color_manager.dart';
import 'package:rest_daschbord/core/widget/SideMenu/SideMenu.dart';
// import 'dart:convert';

// import 'package:http/http.dart' as http;

class AllReservation extends StatefulWidget {
  const AllReservation({super.key});

  @override
  State<AllReservation> createState() => _AllReservationState();
}

class _AllReservationState extends State<AllReservation> {
  // Future getRes() async {
  //   var url = "https://jsonplaceholder.typicode.com/posts";
  //   var response = await http.get(url as Uri);
  //   var responsebody = jsonEncode(response.body);

  // }

  // @override
  // void initState() {
  //   getRes();
  //   super.initState();
  // }

  List resturant = [
    {
      "tableId": "1",
      "customerName": "احمد",
      "customerNumber": "0994191372",
      "reservationDate": "22/6  2:40am",
      "numberOfPeople": "2",
      "reservationType": "عشاء"
    },
    {
      "tableId": "7",
      "customerName": "انس",
      "customerNumber": "0994191372",
      "reservationDate": "22/6  2:40am",
      "numberOfPeople": "5",
      "reservationType": "فطور"
    },
    {
      "tableId": "4",
      "customerName": "غيث",
      "customerNumber": "0994191372",
      "reservationDate": "22/6  2:40am",
      "numberOfPeople": "2",
      "reservationType": "عشاء"
    },
    {
      "tableId": "9",
      "customerName": "ماريا",
      "customerNumber": "0994191372",
      "reservationDate": "22/6  2:40am",
      "numberOfPeople": "2",
      "reservationType": "عشاء"
    },
    {
      "tableId": "1",
      "customerName": "علاء",
      "customerNumber": "09941913722",
      "reservationDate": "22/6  2:40am",
      "numberOfPeople": "2",
      "reservationType": "فطور"
    },
    {
      "tableId": "41",
      "customerName": "سارة",
      "customerNumber": "0994191372",
      "reservationDate": "6/22  2:40am",
      "numberOfPeople": "7",
      "reservationType": "عشاء"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('قائمة الحجوزات'),
        ),
        backgroundColor: AppColorManager.grayColor,
      ),
      body: Row(
        children: [
          Expanded(child: SideMenu(), flex: 1),
          Expanded(
            flex: 4,
            child: ListView.separated(
              separatorBuilder: (context, i) {
                return Divider(
                  color: Colors.grey,
                  height: 2,
                  thickness: 3,
                );
              },
              itemCount: resturant.length,
              itemBuilder: (context, i) {
                Padding(padding: EdgeInsets.all(8));
                return Container(
                    decoration: BoxDecoration(
                      color: AppColorManager.whiteColor,
                    ),
                    padding: EdgeInsets.only(right: 20, left: 20),
                    width: double.infinity,
                    height: 270,
                    child: ListTile(
                      title: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                  " الاسم : ${resturant[i]['customerName']}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: AppColorManager.blackColor),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Text(
                                      "رقم الهاتف : ${resturant[i]['customerNumber']}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColorManager.blackColor),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: Text(
                                      " عدد الاشخاص :${resturant[i]['numberOfPeople']}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColorManager.blackColor),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              "نوع الحجز  :${resturant[i]['reservationType']}",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColorManager.blackColor),
                            ),
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              "تاريخ ووقت الحجز : ${resturant[i]['reservationDate']}",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColorManager.blackColor),
                            ),
                          ),
                          Column(
                            children: [
                              Directionality(
                                textDirection: TextDirection.rtl,
                                child: Text(
                                  " رقم الطاولة   :${resturant[i]['tableId']}",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: AppColorManager.blackColor),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // زر التحقق
                                  IconButton(
                                    icon: Icon(Icons.check),
                                    color: Colors.green,
                                    onPressed: () {
                                      print('تم التحقق من الحجز');
                                    },
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: IconButton(
                                      icon: Icon(Icons.cancel),
                                      color: Colors.red,
                                      onPressed: () {
                                        print('تم الغاء الحجز');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColorManager.rrrColor,
        focusColor: AppColorManager.whiteColor,
        onPressed: () {
          Navigator.pushNamed(context, '/Add');
        },
        label: Text("اضافة حجز"),
      ),
    );
  }
}
