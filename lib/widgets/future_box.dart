import 'package:flutter/material.dart';
import 'package:levii/core/app_pallette.dart';


class FutureBox extends StatefulWidget {
  final Color bgcolor;
  final String headtext;
   final String text;
  final VoidCallback onpressed;
  const FutureBox({super.key, required this.bgcolor, required this.text, required this.onpressed, required this.headtext});


  @override
  State<FutureBox> createState() => _FutureBoxState();
}

class _FutureBoxState extends State<FutureBox> {
  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
        onTap: widget.onpressed,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5,horizontal:30),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color:widget.bgcolor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.headtext,style:AppPallette.fText1),
              SizedBox(height: 5),
              Text(widget.text,style: AppPallette.fText2,),
            ],
          ),
        ),
    );
  }
}