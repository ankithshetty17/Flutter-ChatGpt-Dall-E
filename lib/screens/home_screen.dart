import 'package:flutter/material.dart';


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
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
              children: [
               Center(
                 child: Container(
                      margin: EdgeInsets.symmetric(vertical: 25),
                      height: 120,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: 
                        [
                          const Color.fromARGB(255, 5, 118, 126),
                          const Color.fromARGB(255, 196, 232, 241)
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                        shape: BoxShape.circle,
                      ),
                    ),
               ),
               Container(
                  child: Image.asset('assets/images/ai.png',width: 290,),
                 ),
              ],
            ),

        ],
      ),
    );
  }
}