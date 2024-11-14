import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String title;
  final Color MyColor;
  final VoidCallback OnPress;

  const MyButton({super.key , required this.title, this.MyColor = Colors.grey, required this.OnPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: OnPress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: MyColor,
              shape: BoxShape.circle
            ),
            child: Center(child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20))),
          ),
        ),
      ),
    );
  }
}