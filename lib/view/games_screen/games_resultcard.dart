import 'package:flutter/material.dart';
import 'package:quiz_app/dummy_db.dart';
import 'package:quiz_app/view/games_screen/games_screen.dart';
import 'package:quiz_app/view/home_screen/home_screen.dart';
import 'package:quiz_app/view/main_home_page/main_home_page.dart';

class GamesResultcard extends StatelessWidget {
  const GamesResultcard({super.key, required this.rightAnswerCount,});
  final int rightAnswerCount;
  
    
     

  @override
  Widget build(BuildContext context) {
    double percentage = rightAnswerCount * 100/ DummyDb.gameqstn.length;
    int wrongAnswer= DummyDb.gameqstn.length-rightAnswerCount;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Congrats!",
            style: TextStyle(
              color: Colors.white,fontSize: 30,
            ),),
            Text("$percentage %",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
             Text("Right Answers:$rightAnswerCount",style: TextStyle(color: Colors.green,fontSize: 19),),
                Text("Wrong Answers: $wrongAnswer",style: TextStyle(color: Colors.red,fontSize: 17),),
                SizedBox(height: 20,),
            TextButton(onPressed: (){Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => GamesScreen(),
            ),
            );
            },
             child: Text("Restart")),
              SizedBox(height: 20,),
            TextButton(
              style: ButtonStyle(
           
                backgroundColor: MaterialStatePropertyAll(Colors.grey,
                ),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),))
              ),
              onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainHomePage(),));
            }, child:  Text("Exit"),
            ),

          ],
        ),
      ),
    );
  }
  }
