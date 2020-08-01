import 'package:africa1country/Template.dart';
import 'package:africa1country/variable.dart';
import 'package:flutter/material.dart';

class ListTemplate{
  String n1='TourismTheme';
  String d1='cfgvhrvhrv';
  String p1='images/template2.png';
  String r1=template3Id;

  String n2='BlueSky';
  String d2='cfgvhrvhrv';
  String p2='images/template3.png';
  String r2=template2Id;

  String n3='SequoiaTheme';
  String d3='It is a beautiful login template for agriculture or other related industries';
  String p3='images/template4.png';
  String r3=template4Id;

  ListTemplate(){

  }

  List<Template> get fullList => _fullList;

  set fullList(List<Template> value) {
    _fullList = value;
  }

  List<Template> _fullList=[];
  Template returnList(int i){

    return _fullList[i];
  }
//  List<Template> returnList(){
//    _fullList.add(new Template(n1,d1,p1,r1));
//    _fullList.add(new Template(n2,d2,p2,r2));
//    _fullList.add(new Template(n3,d3,p3,r3));
//    return _fullList;
//  }
CreateListe(){
  _fullList.add(new Template(n1,d1,p1,r1));
  _fullList.add(new Template(n2,d2,p2,r2));
  _fullList.add(new Template(n3,d3,p3,r3));
}

}