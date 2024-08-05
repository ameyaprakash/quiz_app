import 'package:flutter/material.dart';
import 'package:quiz_app/utils/image_constants.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
   child: Scaffold(
    backgroundColor: Colors.black,
    body: Padding(padding: const EdgeInsets.all(25),
    child: Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi John",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                ),),
                  Text("Let's make this day productive",style: TextStyle(color: Colors.white.withOpacity(0.9),fontSize: 14,fontWeight: FontWeight.normal),),
                
              ],
            ),
             Spacer(),
             CircleAvatar(
              radius: 25,
              child: Image.asset(ImageConstants.Profile_pic),
             )
          ],
        ),
        SizedBox(height: 20,),
          Container(
             padding: EdgeInsets.only(left: 25,top: 15,bottom: 5),
            alignment: Alignment.center,
            width: 350,
            height: 80,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 68, 64, 64),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Image(image: NetworkImage("https://img.freepik.com/free-vector/trophy_78370-345.jpg?size=626&ext=jpg&ga=GA1.2.53370177.1695191231&semt=sph")),
                // Image.asset(ImageConstants.Tropy_icon),
                SizedBox(
                  width: 8,
                ),
                Column(
                  children: [
                     Text("Ranking",style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 14),),
                        Text("348",style: TextStyle(color: Colors.blue,fontSize: 18),),
                  ],
                ),
                  SizedBox(width: 12,),
                    VerticalDivider(),
                    SizedBox(width: 12,),
                    //  Image.asset(ImageConstants.Coin_icon),
                    Image(image: NetworkImage("https://img.freepik.com/free-psd/dollar-sign-gold-coin-icon-isolated-3d-render-illustration_439185-12780.jpg?ga=GA1.1.53370177.1695191231&semt=sph")),
                     SizedBox(width: 12,),
                    Column(
                      children: [
                        Text("Points",style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize: 14),),
                        Text("1209",style: TextStyle(color: Colors.blue,fontSize: 18),),
                      ],
                   ),
              ],
            ),

          ),
           SizedBox(height: 20,),
              Text(textAlign: TextAlign.left,"Let's Play",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
      ],
    ),),
   ),
    
    );
  }
}