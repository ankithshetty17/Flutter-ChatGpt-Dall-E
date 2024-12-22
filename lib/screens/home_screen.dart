import 'package:flutter/material.dart';
import 'package:levii/core/app_pallette.dart';
import 'package:levii/widgets/future_box.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Levii',style: TextStyle(fontFamily:'Cera'),),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
              children: [
               Center(
                 child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: 
                        [
                         AppPallette.gradient1,
                          AppPallette.gradient2
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                        shape: BoxShape.circle,
                      ),
                    ),
               ),
             SizedBox(
                  child: Image.asset('assets/images/ai.png',width: 290,),
                 ),
              ],
            ),
           Container(
            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 25),
            child: Text('Good Morning what task can i do for you?',
            style: AppPallette.text1),
           decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(18),
              bottomLeft:  Radius.circular(18),
              bottomRight:  Radius.circular(18),
            )
           ),
           ),
           Align(
            alignment: Alignment.centerLeft,
            child:  
           Padding(
             padding: const EdgeInsets.only(top:8.0,left: 25),
             child: Text('Here are few feautures',style: AppPallette.sText2,),
           ),
           ),
           
           Column(
               children: [
                 FutureBox(
                  bgcolor: AppPallette.firstSuggestionBoxColor,
                  text: 'A smarter way to stay organized and informed with chatgpt.', 
                 onpressed: (){},
                  headtext: 'ChatGpt',),
             
                   FutureBox(
              bgcolor: AppPallette.firstSuggestionBoxColor,
              text: 'Get inspired and stay creative with your personal assistant powered by Dall-E.', 
             onpressed: (){},
              headtext: 'Dall-E',),
             
               FutureBox(
              bgcolor: AppPallette.firstSuggestionBoxColor,
              text: 'Get the best of both worlds with a voice assistant powered by Dall-e and ChatGpt.', 
             onpressed: (){},
              headtext: 'Smart Voice Assistant',)
               ],
             ),
           Align(
            alignment: Alignment.bottomRight,
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: FloatingActionButton(onPressed: (){},
               child: Icon(Icons.mic),),
             ),
           )
           
        ],
      ),
    );
  }
}