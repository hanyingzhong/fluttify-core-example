//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_base_flutter/src/ios/ios.export.g.dart';
import 'package:amap_base_flutter/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class com_autonavi_amap_mapcore_FPoint extends android_graphics_PointF  {
  // generate getters
  

  // generate setters
  

  // generate methods
  static Future<com_autonavi_amap_mapcore_FPoint> obtain() async {
    // print log
    if (!kReleaseMode) {
      print('fluttify-dart: com.autonavi.amap.mapcore.FPoint::obtain([])');
    }
  
    // invoke native method
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('com.autonavi.amap.mapcore.FPoint::obtain', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_autonavi_amap_mapcore_FPoint()..refId = result..tag = 'amap_base_flutter');
      return com_autonavi_amap_mapcore_FPoint()..refId = result..tag = 'amap_base_flutter';
    }
  }
  
}