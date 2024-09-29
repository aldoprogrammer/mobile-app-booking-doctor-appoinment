import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  List<String> catNames = [
    "Dental",
    "Heart",
    "Eye",
    "Brain",
    "Ear",
  ];

  List<Icon> catIcons = [
    Icon(
      MdiIcons.toothOutline,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.eye,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.brain,
      color: Colors.redAccent,
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: Colors.redAccent,
      size: 30,
    ),
  ];

  List<String> imgs = [
    "images/doctor1.jpg",
    "images/doctor2.jpg",
    "images/doctor3.jpg",
    "images/doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // Get the screen size for responsiveness
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Wrap the Row in a Container and set its width to 90% of the screen width
                  Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width *
                            0.02), // 5% of screen width
                    width: screenWidth * 0.97, // 90% of the screen width
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("images/doctor1.jpg"),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Hi, Programmer",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xFFF2f8ff),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 4,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Icon(
                              Icons.notifications_outlined,
                              color: Colors.redAccent,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 20, bottom: 20, left: 15, right: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
