import 'package:africa1country/variable.dart';
import 'package:flutter/material.dart';

import '../Template2/Template2.dart';

class Template3 extends StatefulWidget {
  @override
  _Template3State createState() => _Template3State();
}

class _Template3State extends State<Template3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('VincentCreation'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        children: [
          Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            children: <Widget>[

              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/back1.png'),
                        fit: BoxFit.fill
                    )),
                child: Stack(
                  children: [
                    Positioned(
                        top: -10,
                        left: 30,
                        width: 80,
                        height: 200,
                        child: TweenAnimationBuilder(
                          tween: scaleTween,
                          duration: Duration(milliseconds: 400),
                          builder: (context,scale,chlid){
                            return Transform.scale(scale: scale,child: chlid);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/1photo.png'),
                                    fit: BoxFit.fill
                                )),
                            child: null,
                          ),
                        )),
                    Positioned(
                        top: -10,
                        left: 130,
                        width: 230,
                        height: 200,
                        child: TweenAnimationBuilder(
                          tween: scaleTween2,
                          duration: Duration(milliseconds: 900),
                          builder: (context,scale,chlid){
                            return Transform.scale(scale: scale,child: chlid);
                          },

                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/2photo.png'),
                                    fit: BoxFit.fill
                                )),
                            child: null,
                          ),
                        )),
                    Positioned(
                        right: 0,
                        width: 80,
                        height: 200,
                        child: TweenAnimationBuilder(
                          tween: scaleTween3,
                          duration: Duration(milliseconds: 1600),
                          builder: (context,scale,chlid){
                            return Transform.scale(scale: scale,child: chlid);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/3photo.png'),
                                    fit: BoxFit.fill
                                )),
                            child: null,
                          ),
                        )),
//                      Positioned(
//                          top: 190,
//                          //right: -5,
//                          width: 200,
//                          height: 200,
//                          child: AnimatedBuilder(
//                            animation: _controller.view,
//                            builder: (context,child){
//                              return Transform.rotate(angle: _controller.value*2*pi,child: child,);
//                            },
//                            child: Container(
//                              decoration: BoxDecoration(
//                                  image: DecorationImage(
//                                      image: AssetImage('images/roue.png'),
//                                      fit: BoxFit.fill
//                                  )),
//                              child: null,
//                            ),
//                          )),
                    Positioned(
                        top: 190,
                        left: 55,
                        width: 189,
                        height: 200,
                        child: Container(
                          child: Text('Hello template',style: TextStyle(fontSize: 22),),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                              color: Color.fromRGBO(143, 143, 251, 2),
                              blurRadius: 20,
                              offset: Offset(0, 10)
                          )]

                      ),
                      child: Column(
                        children: [
                          Container(

                            child: TextField(

                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email,color: Colors.deepPurple,),
                                  border: InputBorder.none,
                                  hintText: "Email or phone Number",
                                  hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(

                            child: TextField(
                              obscureText: true,

                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock,color: Colors.deepPurple,),
                                  border: InputBorder.none,
                                  hintText: "PassWord",
                                  hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TweenAnimationBuilder(
                      tween: scaleTween4,
                      duration: Duration(milliseconds: 2000),
                      builder: (context,scale,chlid){
                        return Transform.scale(scale: scale,child: chlid);
                      },
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Template2()));
                        },
                        child: Container(

                          height: 50,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(colors: [
                                Color.fromRGBO(143, 148, 251, 1),
                                Color.fromRGBO(143, 148, 251, 6)
                              ])
                          ),
                          child: Center(
                            child: Text('Login'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
