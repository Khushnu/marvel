import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:marvel/Models/category.dart';
import 'package:marvel/Models/infomodel.dart';
import 'package:marvel/Models/modelcommon.dart';
import 'package:marvel/Widgets/button_widget.dart';
import 'package:marvel/Widgets/common_container.dart';
import 'package:marvel/Widgets/contact_widget.dart';
import 'package:marvel/Widgets/list_widgets.dart';
import 'package:marvel/Widgets/taxi_card_widget.dart';
import 'package:marvel/Widgets/text_widget.dart';
import 'package:marvel/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentselected = catelist[0];
  var currentparking = parkingList[0];
  var currentterminal = terminallist[0];
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.sizeOf(context).height;
    double screenwidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
                text: 'Dubai Airport - DXB',
                fontsize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            SizedBox(
              height: 4,
            ),
            TextWidget(
                text: 'Dubai . 🇦🇪 United Arab Emirates',
                fontsize: 12,
                fontWeight: FontWeight.bold,
                color: secondarytext),
          ],
        ),
      ),
      backgroundColor: bgcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: screenheight * 0.4,
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                        'images/bg.jpg',
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: screenheight * 0.1 + 50,
                        width: screenwidth,
                        // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: infolist
                                    .map((e) => SizedBox(
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                e.icon,
                                                height: 16,
                                                width: 16,
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              TextWidget(
                                                  text: e.title,
                                                  fontsize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: primary),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              TextWidget(
                                                  text: e.cond,
                                                  fontsize: 11,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff909090))
                                            ],
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                            const Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Spacer(),
                                Image.asset(
                                  'images/direc.png',
                                  color: const Color(0xff286BF9),
                                  height: 17,
                                  width: 17,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const TextWidget(
                                    text: 'Get Direction',
                                    fontsize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: primary),
                                const SizedBox(
                                  width: 14,
                                ),
                                const SizedBox(
                                  height: 25,
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image.asset(
                                  'images/call.png',
                                  color: const Color(0xff286BF9),
                                  height: 17,
                                  width: 17,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const TextWidget(
                                    text: 'Call Airport',
                                    fontsize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: primary),
                                const SizedBox(
                                  width: 14,
                                ),
                                const Spacer()
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: catelist.map((e) {
                    bool isSelected = currentselected == e;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentselected = e;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 10),
                        child: Container(
                          height: 40,
                          width: screenwidth * 0.2 + 10,
                          decoration: BoxDecoration(
                              color: isSelected ? primary : secondary,
                              borderRadius: BorderRadius.circular(18)),
                          child: Center(
                              child: TextWidget(
                            text: e.title,
                            color: isSelected ? Colors.white : primary,
                            fontsize: 12,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CommonContainerWidget(
                height: screenheight * 0.3 + 20,
                width: screenwidth,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                        text: 'Taxi service',
                        fontsize: 20,
                        fontWeight: FontWeight.bold,
                        color: primary),
                    // SizedBox(height: 10,),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TaxiCardWidget(image: 'images/uber.png'),
                        TaxiCardWidget(image: 'images/camre.png'),
                        TaxiCardWidget(image: 'images/yang.png'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TaxiCardWidget(islux: true, image: 'images/black.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              CommonContainerWidget(
                  height: screenheight * 0.2 + 20,
                  width: screenwidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget(
                          text: 'Public transport',
                          fontsize: 20,
                          fontWeight: FontWeight.bold,
                          color: primary),
                      const SizedBox(
                        height: 15,
                      ),
                      const ListWidget(
                          name: 'Metro', time: '6am - 10pm', icon: Icons.tram),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: secondarytext.withOpacity(0.4),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const ListWidget(
                          name: 'Bus',
                          time: 'available 24hrs',
                          icon: Icons.directions_bus),
                    ],
                  )),
              const SizedBox(
                height: 15,
              ),
              CommonContainerWidget(
                  height: screenheight * 0.3 - 20,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextWidget(
                          text: 'Self parking',
                          fontsize: 20,
                          fontWeight: FontWeight.bold,
                          color: primary),
                      Row(
                        children: parkingList.map((e) {
                          bool isSelected = currentparking == e;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                currentparking = e;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4, vertical: 15),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: isSelected ? primary : secondary),
                                child: Center(
                                  child: TextWidget(
                                      text: e.terminal,
                                      fontsize: 18,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          isSelected ? Colors.white : primary),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      const ListWidget(
                          name: 'Two Wheeler',
                          font: 14,
                          fontWeight: FontWeight.bold,
                          color2: primary,
                          color: secondarytext,
                          font2: 14,
                          trailicon: Icons.info_outline,
                          size: 20,
                          time: 'AED/50 per day',
                          icon: Icons.motorcycle),
                      const SizedBox(
                        height: 8,
                      ),
                      const ListWidget(
                          name: 'Car Parking',
                          font: 14,
                          fontWeight: FontWeight.bold,
                          color2: primary,
                          color: secondarytext,
                          font2: 14,
                          trailicon: Icons.info_outline,
                          size: 20,
                          time: 'AED/100 per day',
                          icon: Icons.directions_car_filled),
                      const SizedBox(
                        height: 8,
                      ),
                      const ListWidget(
                          name: 'Electric Car Parking',
                          font: 14,
                          fontWeight: FontWeight.bold,
                          color2: primary,
                          color: secondarytext,
                          font2: 14,
                          trailicon: Icons.info_outline,
                          size: 20,
                          time: 'AED/100 per day',
                          icon: Icons.electric_car),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              CommonContainerWidget(
                  height: screenheight * 0.3 - 10,
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(
                            text: 'Terminal',
                            fontsize: 20,
                            fontWeight: FontWeight.bold,
                            color: primary),
                        Row(
                          children: terminallist.map((e) {
                            bool isSelected = currentterminal == e;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentterminal = e;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 15),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: isSelected ? primary : secondary),
                                  child: Center(
                                    child: TextWidget(
                                        text: e.terminal,
                                        fontsize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: isSelected
                                            ? Colors.white
                                            : primary),
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(
                          width: screenwidth,
                          child: Stack(
                            children: [
                              Image.asset(
                                'images/termianl.png',
                                fit: BoxFit.fitWidth,
                                width: screenwidth * 0.9,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 150, vertical: 35),
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: TextWidget(
                                        text: 'view',
                                        fontsize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ])),
              const SizedBox(
                height: 10,
              ),
              CommonContainerWidget(
                  height: screenheight * 0.3 + 45,
                  width: screenwidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: TextWidget(
                            text: 'Foreign Exchange',
                            fontsize: 20,
                            fontWeight: FontWeight.bold,
                            color: primary),
                      ),
                      ExpansionTile(
                        expandedAlignment: Alignment.centerLeft,
                        // expandedCrossAxisAlignment: CrossAxisAlignment.center,
                        shape: Border.all(color: Colors.transparent),
                        title: const TextWidget(
                            text: 'Travelex',
                            fontsize: 14,
                            fontWeight: FontWeight.w600,
                            color: primary),
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: TextWidget(
                                text:
                                    'Terminal 3-\n Airside Dept Downtown, Concourse B, \n Terminal 3, beside Winston Smoking room,',
                                fontsize: 12,
                                fontWeight: FontWeight.normal,
                                color: secondarytext),
                          )
                        ],
                      ),
                      ExpansionTile(
                        expandedAlignment: Alignment.centerLeft,
                        // expandedCrossAxisAlignment: CrossAxisAlignment.center,
                        shape: Border.all(color: Colors.transparent),
                        title: const TextWidget(
                            text: 'Al Ansari Exchange',
                            fontsize: 14,
                            fontWeight: FontWeight.w600,
                            color: primary),
                      ),
                      ExpansionTile(
                        expandedAlignment: Alignment.centerLeft,
                        // expandedCrossAxisAlignment: CrossAxisAlignment.center,
                        shape: Border.all(color: Colors.transparent),
                        title: const TextWidget(
                            text: 'Emirates NBD',
                            fontsize: 14,
                            fontWeight: FontWeight.w600,
                            color: primary),
                      )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              CommonContainerWidget(
                  height: screenheight * 0.4 + 10,
                  width: screenwidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextWidget(
                            text: 'Contact airport',
                            fontsize: 20,
                            fontWeight: FontWeight.bold,
                            color: primary),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ContactWidget(
                        text: 'Police',
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Divider(
                        color: secondarytext.withOpacity(0.4),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ContactWidget(
                        text: 'Lost and found',
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Divider(
                        color: secondarytext.withOpacity(0.4),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ContactWidget(
                        text: 'Transport',
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Divider(
                        color: secondarytext.withOpacity(0.4),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ContactWidget(
                        text: 'Head office',
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Divider(
                        color: secondarytext.withOpacity(0.4),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(img: 'images/direc.png', title: 'Get direction'),
                  ButtonWidget(img: 'images/call.png', title: 'Call airport'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
