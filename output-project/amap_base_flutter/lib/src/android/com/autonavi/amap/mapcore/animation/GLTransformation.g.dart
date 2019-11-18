//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_base_flutter/src/ios/ios.export.g.dart';
import 'package:amap_base_flutter/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_animation_GLTransformation extends java_lang_Object  {
  // generate getters
  Future<double> get_alpha() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("com.autonavi.amap.mapcore.animation.GLTransformation::get_alpha", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_rotate() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("com.autonavi.amap.mapcore.animation.GLTransformation::get_rotate", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_scaleX() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("com.autonavi.amap.mapcore.animation.GLTransformation::get_scaleX", {'refId': refId});
  
    return result;
  }
  
  Future<double> get_scaleY() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("com.autonavi.amap.mapcore.animation.GLTransformation::get_scaleY", {'refId': refId});
  
    return result;
  }
  

  // generate setters
  Future<void> set_alpha(double alpha) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('com.autonavi.amap.mapcore.animation.GLTransformation::set_alpha', {'refId': refId, "alpha": alpha});
  
  
  }
  
  Future<void> set_rotate(double rotate) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('com.autonavi.amap.mapcore.animation.GLTransformation::set_rotate', {'refId': refId, "rotate": rotate});
  
  
  }
  
  Future<void> set_scaleX(double scaleX) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('com.autonavi.amap.mapcore.animation.GLTransformation::set_scaleX', {'refId': refId, "scaleX": scaleX});
  
  
  }
  
  Future<void> set_scaleY(double scaleY) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('com.autonavi.amap.mapcore.animation.GLTransformation::set_scaleY', {'refId': refId, "scaleY": scaleY});
  
  
  }
  

  // generate methods
  Future<void> clear() async {
    // print log
    if (!kReleaseMode) {
      print('fluttify-dart: com.autonavi.amap.mapcore.animation.GLTransformation@$refId::clear([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('com.autonavi.amap.mapcore.animation.GLTransformation::clear', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
}