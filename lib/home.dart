import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI Design'),
      ),
      body: Stack(
        children:[
          Container(
          margin: EdgeInsets.fromLTRB(30, 100, 30, 100),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xfffb8b61),
                Color(0xfff86962),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(20),
              topRight: Radius.circular(150)
            )
          ),
            
        ),
          Positioned(
              top:50,
              left: 26,
              child: CircleAvatar(
                  radius:100 ,
                backgroundColor: Colors.white60,
                child:Image.asset('assets/toasts.png',)
                ),
              ),
          Positioned(
              top : 270,
              left: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Breakfast',style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700
                  ),
                  ),
                  SizedBox(height:30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Bread,',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            ),),
                      Text('Peanut Butter,',style: TextStyle(fontSize: 30,color: Colors.white),),
                      Text('Apple,',style: TextStyle(fontSize: 30,color: Colors.white)),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text('525',style: TextStyle(fontSize: 50,color: Colors.white)),
                      SizedBox(width: 10,),
                      Text('kcal',style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          ))
                    ],
                  )
                ],
              ))
        ]  
      )
    );
  }
}
