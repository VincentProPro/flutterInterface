import 'dart:math';

import 'package:africa1country/ListTemplate.dart';
import 'package:africa1country/Template.dart';
import 'package:flutter/material.dart';
class variable{

}
Size screenDimen;
Container mainInfo;
var widthScreen= screenDimen.width;
var heightScreen= screenDimen.height;
 Tween <double> scaleTween=Tween<double>(begin: 0,end: 1);
Tween <double> scaleTween2=Tween<double>(begin: 0,end: 1);
Tween <double> scaleTween3=Tween<double>(begin: 0,end: 1);
Tween <double> scaleTween4=Tween<double>(begin: 0,end: 1);

List<Template> mytemplate=[];
ListTemplate lt=ListTemplate();


Container returnContainer(String name,String descrip, String photo, String rotepage, BuildContext context, Animation _controller){

 return Container(
  margin: EdgeInsets.only(right: 10,left: 10),
  child: Column(


   children: [
    SizedBox(
     height: 10,
    ),
    Container(
     padding: EdgeInsets.all(8),
     decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(10),
         boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(200, 30, 61, 2),
              blurRadius: 20,
              offset: Offset(0, 10))
         ]),
     child: Column(
      children: [
       Container(
        width: (2*screenDimen.width / 3)-50,

        child: Row(
         children: [
          ClipOval(

           child: Container(
            color: Colors.grey[100],
            child: Container(
             width: (screenDimen.width / 3)-25,
             height: screenDimen.height/7,
             decoration: BoxDecoration(
                 image: DecorationImage(
                  image: AssetImage('images/feme.png'),
                  //fit: BoxFit.fill
                 )),
            ),
           ),
          ),
          Expanded(child: Container(
           child: null,)),
          AnimatedBuilder(
           animation: _controller,
          builder: (context,child){
          return Transform.rotate(angle: _controller.value*500,child: child,);
                            },
            child: Container(
             width: (screenDimen.width / 3)-25,
             height: screenDimen.height/13,

             decoration: BoxDecoration(
                 image: DecorationImage(
                  image: AssetImage('images/content/p1.png'),
                  //fit: BoxFit.fill
                 )),
             child: null,
            ),
          )
         ],
        ),
       ),
       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Container(

          child: Card(
           // color: Colors.lightGreen,
              elevation: 5,
              child: Center(child: Text(name,textAlign:TextAlign.center,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),))),
         ),
         Card(
             elevation: 5,
             //color: Colors.green[300],
             //color: Colors.lightGreen,
             child: Container(
                 width: screenDimen.width -150,
                 height:screenDimen.width -150,
                 child: Image.asset(photo))),
         Center(
          child: Container(
              width: screenDimen.width -120,
              color: Colors.white,
              child: Center(child: Text(descrip,textAlign: TextAlign.center,))),
         ),
         SizedBox(
          height: 20,
         ),
         GestureDetector(
          onTap: (){
           Navigator.pushNamed(
            context,rotepage);

          },
           child: Container(
            height: 50,
            width: (2*screenDimen.width/3)-50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [
                 Color.fromRGBO(253, 13, 13, 1),
                 Color.fromRGBO(170, 13, 1, 6)
                ])),
            child: Center(
             child: Text('Lire',
                 style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w700,
                     fontSize: 22)),
            ),
           ),
         ),
         SizedBox(height: 15),


        ],
       ),
       //SizedBox(height: 15),
      ],
     ),
    ),

    SizedBox(height: 50),
    Container(
     padding: EdgeInsets.only(top: 10),
     child: Text(
      'VincentCreation',
      style: TextStyle(
          fontStyle: FontStyle.italic,
          color: Colors.lightGreen),
     ),
    )
   ],
  ),
 );
}
List<Container> containerListes=[];





const String template2Id="template3";
const String template3Id="template2";
const String template4Id="template4";
