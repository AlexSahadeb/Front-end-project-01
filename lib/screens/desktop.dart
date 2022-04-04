import 'package:flutter/material.dart';
import 'package:font_end_project/helper/appcolor.dart';
import 'package:font_end_project/widget/mybutton.dart';

class DesktopScreen extends StatefulWidget {
  @override
  State<DesktopScreen> createState() => _DesktopScreenState();
}

class _DesktopScreenState extends State<DesktopScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: Image.asset(
                  "assets/img/logo.png",
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: AppColors.DefoultColor,
                      border: Border.all(
                          width: 2,
                          style: BorderStyle.solid,
                          color: AppColors.primaryColor)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
                    child: Text(
                      "Record their answer",
                      style: TextStyle(
                          fontSize: 12,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Grow closer to your loved ones\nby asking them this question.",
              style: TextStyle(color: AppColors.primaryColor, fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                "How did you enjoy working!",
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myButton(
                name: "Copy this question",
                icon: Icons.copy,
                color: AppColors.DefoultColor,
                bgcolor: AppColors.primaryColor,
                onPresd: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(Icons.close)),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Text(
                                              "Download the best 100 questions",
                                              style: TextStyle(
                                                color: AppColors.primaryColor,
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: Text(
                                              "We'd Love to send you an E-Book of the 100 top question you can ask your loved anes to get to know them better.",
                                              style: TextStyle(
                                                  color:
                                                      AppColors.primaryColor),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          TextField(
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                fillColor: Colors.grey[300],
                                                filled: true,
                                                hintText: "Email",
                                                hintStyle: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        AppColors.primaryColor,
                                                    fontSize: 13)),
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          GestureDetector(
                                            onTap: () {},
                                            child: Container(
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(6)),
                                                color: AppColors.primaryColor,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 15,
                                                        horizontal: 3),
                                                child: Center(
                                                  child: Text(
                                                    "Get the E-Book",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: AppColors
                                                            .DefoultColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                      Expanded(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.asset(
                                              "assets/img/image.png",
                                              height: 400,
                                              width: 400,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ))
                                    ],
                                  ),
                                ],
                              )),
                        );
                      });
                },
              ),
              myButton(
                  name: "Try another one",
                  icon: Icons.swap_horiz,
                  color: AppColors.primaryColor,
                  bgcolor: AppColors.DefoultColor,
                  onPresd: () {}),
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Text(
            "Mode with love by timewell",
            style: TextStyle(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
