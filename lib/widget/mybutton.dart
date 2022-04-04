import 'package:flutter/material.dart';
import 'package:font_end_project/helper/appcolor.dart';

class myButton extends StatelessWidget {
  myButton(
      {Key? key,
      required this.name,
      required this.icon,
      required this.color,
      required this.bgcolor,
      required this.onPresd})
      : super(key: key);
  String name;

  IconData icon;
  Color color;
  Color bgcolor;
  VoidCallback onPresd;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPresd,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        padding: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            color: bgcolor,
            border: Border.all(
                width: 2,
                style: BorderStyle.solid,
                color: AppColors.primaryColor)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: color,
                size: 25,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 12, color: color, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
