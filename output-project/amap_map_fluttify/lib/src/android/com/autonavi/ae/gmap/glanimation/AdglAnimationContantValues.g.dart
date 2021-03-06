// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';

class com_autonavi_ae_gmap_glanimation_AdglAnimationContantValues extends java_lang_Object  {
  //region constants
  static final int ADGLANIMATOIN_TWO_INT = 2;
  static final int ADGLANIMATOIN_FOUR_INT = 2;
  static final int ADGLANIMATOIN_TWO_POWER_TEN = 1024;
  static final double ADGLANIMATOIN_OFFSET = 1.0E-4;
  static final double ADGLANIMATOIN_OFFSET1 = 1.0E-6;
  //endregion

  //region creators
  static Future<com_autonavi_ae_gmap_glanimation_AdglAnimationContantValues> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createcom_autonavi_ae_gmap_glanimation_AdglAnimationContantValues__');
    final object = com_autonavi_ae_gmap_glanimation_AdglAnimationContantValues()..refId = refId..tag = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<com_autonavi_ae_gmap_glanimation_AdglAnimationContantValues>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchcom_autonavi_ae_gmap_glanimation_AdglAnimationContantValues__', {'length': length});
  
    final List<com_autonavi_ae_gmap_glanimation_AdglAnimationContantValues> typedResult = resultBatch.map((result) => com_autonavi_ae_gmap_glanimation_AdglAnimationContantValues()..refId = result..tag = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}

extension com_autonavi_ae_gmap_glanimation_AdglAnimationContantValues_Batch on List<com_autonavi_ae_gmap_glanimation_AdglAnimationContantValues> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}