import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  const CustomButton({Key? key,required this.color,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 200,
      height: 100,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.black,
              width: 2
          )


      ),
      child: Center(child: Text(text)),

    );
  }
}
