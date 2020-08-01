import 'package:flutter/material.dart';

class Template{
  String _name, _photo, _descrip,_routePage;
  Template(this._name,this._descrip,this._photo,this._routePage);

  get routePage => _routePage;

  set routePage(value) {
    _routePage = value;
  }

  get descrip => _descrip;

  set descrip(value) {
    _descrip = value;
  }

  get photo => _photo;

  set photo(value) {
    _photo = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}