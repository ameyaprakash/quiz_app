import 'package:flutter/material.dart';

class GamesOptioncard extends StatelessWidget {
  const GamesOptioncard({super.key, required this.option, this.onOptionsTapped, this.borderColor});
final String option;
  final void Function()? onOptionsTapped;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
   return InkWell(
      onTap:onOptionsTapped ,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color:
          borderColor?? Colors.grey.shade800,
          width: 2,),
          
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(
              option,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),),
            Spacer(),
            Icon(Icons.radio_button_off,
            color: Colors.white,)
          ],
        ),
        
      ),
    );
  
  }
}