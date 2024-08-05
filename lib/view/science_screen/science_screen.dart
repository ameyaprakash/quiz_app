import 'package:flutter/material.dart';
import 'package:quiz_app/dummy_db.dart';
import 'package:quiz_app/view/home_screen/widgets/options_card.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';

class ScienceScreen extends StatefulWidget {
  const ScienceScreen({super.key});

  @override
  State<ScienceScreen> createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
    int rightAnswerCount=0;
  int currentQstnIndex=0;
  int ?selectedIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Container(
              decoration: BoxDecoration(color: Colors.blue,
              borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: Text("${currentQstnIndex+1}/${DummyDb.scienceqstn.length}"),
            )
          ],
        ),
        backgroundColor: Colors.black,
        
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //question section
      
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    DummyDb.scienceqstn[currentQstnIndex]["question"].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                  ),),      ),
                //option section
               SizedBox(height: 30,),
                Column(
                  children: 
                    List.generate(4, 
                    (index) 
                    {
                      List ansOptions =  DummyDb.scienceqstn[currentQstnIndex]["options"]as List;
                      return optionsCard(
                         borderColor: getColor(index),
                        onOptionsTapped: () {
                          if(selectedIndex==null){
                            selectedIndex=index;
                          setState(() {
                            
                          });
                          if(selectedIndex==DummyDb.scienceqstn[currentQstnIndex]["answerIndex"]){
                            rightAnswerCount++;
                            print(rightAnswerCount);
                            
                          }else{
                            print("wrong answer");
                          }
                          }
                          
                        },
                        option: 
                      ansOptions[index],
                      );
                    } 
                    )
                  
                ),
                
                  InkWell(
                    onTap: (){
                      if(selectedIndex!=null){
                        selectedIndex=null;
                      if(currentQstnIndex<DummyDb.scienceqstn.length-1){
                       currentQstnIndex++;
                       print(currentQstnIndex);
                       setState(() {
                  
                       });
                    } else{
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ResultScreen(rightAnswerCount: rightAnswerCount ,),));
                    }
                      }else{
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("select a valid choice")));
                      }
                      
                    }
                   ,
                    child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text("Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),),      ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color getColor(int index){
    if(selectedIndex!=null){
      if(DummyDb.scienceqstn[currentQstnIndex]["answerIndex"] ==selectedIndex && index==selectedIndex){
      return Colors.green;
    }else if(DummyDb.scienceqstn[currentQstnIndex]["answerIndex"] !=selectedIndex &&selectedIndex==index){
       return Colors.red;
    }
    else if(DummyDb.scienceqstn[currentQstnIndex]["answerIndex"]== index){
      return Colors.green;
    }
    }
    
    return Colors.grey.shade800;
  }
}


  
