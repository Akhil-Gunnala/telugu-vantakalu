import 'package:flutter/material.dart';

class Constant extends StatelessWidget {
  Constant({required this.image, required this.text, required this.onpressed});
  final String image;
  final String text;
  final Widget onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Column(
        children: [
          Expanded(
            child: Container(
              height: 100,
              width: 130,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          )
        ],
      ),
      onPressed: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => onpressed)),
    );
  }
}
