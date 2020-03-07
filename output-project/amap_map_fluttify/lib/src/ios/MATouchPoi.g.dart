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

class MATouchPoi extends NSObject  {
  //region constants
  
  //endregion

  //region creators
  static Future<MATouchPoi> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createMATouchPoi');
    final object = MATouchPoi()..refId = refId..tag = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<MATouchPoi>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchMATouchPoi', {'length': length});
  
    final List<MATouchPoi> typedResult = resultBatch.map((result) => MATouchPoi()..refId = result..tag = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_name() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATouchPoi::get_name", {'refId': refId});
  
    return result;
  }
  
  Future<CLLocationCoordinate2D> get_coordinate() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATouchPoi::get_coordinate", {'refId': refId});
    kNativeObjectPool.add(CLLocationCoordinate2D()..refId = result..tag = 'amap_map_fluttify');
    return CLLocationCoordinate2D()..refId = result..tag = 'amap_map_fluttify';
  }
  
  Future<String> get_uid() async {
    final result = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATouchPoi::get_uid", {'refId': refId});
  
    return result;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}

extension MATouchPoi_Batch on List<MATouchPoi> {
  //region getters
  Future<List<String>> get_name_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATouchPoi::get_name_batch", [for (final item in this) {'refId': item.refId}]);
    final typedResult = (resultBatch as List).map((result) => result).toList();
  
    return typedResult;
  }
  
  Future<List<CLLocationCoordinate2D>> get_coordinate_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATouchPoi::get_coordinate_batch", [for (final item in this) {'refId': item.refId}]);
    final typedResult = (resultBatch as List).map((result) => CLLocationCoordinate2D()..refId = result..tag = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  Future<List<String>> get_uid_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MATouchPoi::get_uid_batch", [for (final item in this) {'refId': item.refId}]);
    final typedResult = (resultBatch as List).map((result) => result).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}