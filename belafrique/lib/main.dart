import 'dart:math';

import 'package:africa1country/ListTemplate.dart';
import 'package:africa1country/Template2/Template2.dart';
import 'package:africa1country/Template4/Template4.dart';
import 'package:africa1country/variable.dart';
import 'package:flutter/material.dart';

import 'Template.dart';
import 'Template3/Template3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        template2Id: (context)=> Template2(),
        template3Id: (context)=> Template3(),
        template4Id: (context)=> Template4(),

    },
      home: MyHomePage(title: 'VincentCreation'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  double _height= 10;
  double _width=100;
  void updater(){
    setState(() {
      _height= 50;
      _width=400;
    });

  }
  Tween <double> _scaleTween=Tween<double>(begin: 0,end: 1);
  Tween <double> _scaleTween2=Tween<double>(begin: 0,end: 1);
  Tween <double> _scaleTween3=Tween<double>(begin: 0,end: 1);
  Tween <double> _scaleTween4=Tween<double>(begin: 0,end: 1);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    final Size screenSize = MediaQuery.of(context).size;

    screenDimen = screenSize;
    executethis();

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/2,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Template3()),
                        );
                      },
                      child: Container(
                        //width: 200,
                        color: Colors.white,

                        child: ListTile(

                          leading: Card(
                            elevation: 5,
                            child: Container(
                              height: widthScreen / 8,
                              width: widthScreen / 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                              ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'images/template2.png'),
                                child: null,
                              ),
                            ),
                          ),
                          title: Text('Template 2'),
                          subtitle: Text('Very beautiful template'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Template2()),
                        );
                      },
                      child: Container(
                        //width: 200,
                        color: Colors.white,

                        child: ListTile(

                          leading: Card(
                            elevation: 5,
                            child: Container(
                              height: widthScreen / 8,
                              width: widthScreen / 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                              ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'images/template3.png'),
                                child: null,
                              ),
                            ),
                          ),
                          title: Text('Template 3'),
                          subtitle: Text('Very beautiful template'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Template4()),
                        );
                      },
                      child: Container(
                        //width: 200,
                        color: Colors.white,

                        child: ListTile(

                          leading: Card(
                            elevation: 5,
                            child: Container(
                              height: widthScreen / 8,
                              width: widthScreen / 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                              ),
                              child: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'images/template4.png'),
                                child: null,
                              ),
                            ),
                          ),
                          title: Text('Template 4'),
                          subtitle: Text('Very beautiful template'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
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
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('VC'),
                          Container(
                            height: widthScreen / 8,
                            width: widthScreen / 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                              //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/feme.png'),
                              backgroundColor: Colors.grey[100],
                              child: null,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: ((widthScreen * 7) / 8) - 30,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8, top: 8),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Template3()),
                                          );
                                        },
                                        child: Column(
                                          children: <Widget>[
                                            Card(
                                              elevation: 5,
                                              child: Container(
                                                height: widthScreen / 8,
                                                width: widthScreen / 8,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                                ),
                                                child: CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/template2.png'),
                                                  child: null,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 8),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.blue,
                                                      width: 1,
                                                      style: BorderStyle.solid)),
                                              child: Text("Template 2"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8, top: 8),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Template2()),
                                          );
                                        },
                                        child: Column(
                                          children: <Widget>[
                                            Card(
                                              elevation: 5,
                                              child: Container(
                                                height: widthScreen / 8,
                                                width: widthScreen / 8,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                                ),
                                                child: CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/template3.png'),
                                                  child: null,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 8),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.blue,
                                                      width: 1,
                                                      style: BorderStyle.solid)),
                                              child: Text("Template 3"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, right: 8, top: 8),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Template4()),
                                          );
                                        },
                                        child: Column(
                                          children: <Widget>[
                                            Card(
                                              elevation: 5,
                                              child: Container(
                                                height: widthScreen / 8,
                                                width: widthScreen / 8,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  //boxShadow: [BoxShadow(color: Colors.black26, offset: Offset(1,0),blurRadius: 5)],
                                                ),
                                                child: CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      'images/template4.png'),
                                                  child: null,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 8),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.blue,
                                                      width: 1,
                                                      style: BorderStyle.solid)),
                                              child: Text("Template4"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, left: 30),
                  child: TweenAnimationBuilder(
                    tween: scaleTween4,
                    duration: Duration(milliseconds: 400),
                    builder: (context, scale, chlid) {
                      return Transform.scale(scale: scale, child: chlid);
                    },
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: containerListes,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'go to connexion',
        child: Icon(Icons.account_circle),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  AnimationController _controller;

  @override
  void initState() {

    _controller= AnimationController(vsync: this,
    duration: Duration (seconds: 5),
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  executethis(){
    //mytemplate.addAll(lt.returnList());
    if(lt.fullList.length==0){
      print('list contain');
      lt.CreateListe();
      print(lt.fullList.length);
      for(int i=0;i<lt.fullList.length;i++){

        mytemplate.add(lt.returnList(i));
        print(i);
        print(mytemplate);
      }
      for(Template tt in mytemplate){
        containerListes.add(returnContainer(tt.name,tt.descrip,tt.photo,tt.routePage,context,_controller));
        print(tt.name);

      }

    }


    //containerListes.addAll(lt.returnList());
//      containerListes.add(returnContainer(new ListTemplate().n1,new ListTemplate().d1,new ListTemplate().p1,new ListTemplate().r1,context));
//      containerListes.add(returnContainer(new ListTemplate().n2,new ListTemplate().d2,new ListTemplate().p2,new ListTemplate().r2,context));
//      containerListes.add(returnContainer(new ListTemplate().n3,new ListTemplate().d3,new ListTemplate().p3,new ListTemplate().r3,context));


  }

}
