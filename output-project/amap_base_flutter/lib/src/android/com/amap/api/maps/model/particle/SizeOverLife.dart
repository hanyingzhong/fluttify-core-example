import 'dart:typed_data';

import 'package:amap_base_flutter/amap_base_flutter.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class com_amap_api_maps_model_particle_SizeOverLife extends com_autonavi_amap_mapcore_AbstractNativeInstance {
  com_amap_api_maps_model_particle_SizeOverLife.withRefId(int refId): super.withRefId(refId);

  static final _channel = MethodChannel('me.yohom/amap_base_flutter');

  // 生成getters
  Future<int> get_DEFAULT_SIZE() async {
    final result = await _channel.invokeMethod("com.amap.api.maps.model.particle.SizeOverLife::get_DEFAULT_SIZE", {'refId': refId});
    return result;
  }
  

  // 生成setters
  

  // 生成方法们
   Future<double> getSizeX(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.SizeOverLife@$refId::getSizeX([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.SizeOverLife::getSizeX', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<double> getSizeY(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.SizeOverLife@$refId::getSizeY([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.SizeOverLife::getSizeY', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<double> getSizeZ(double var1) async {
    // 日志打印
    print('fluttify-dart: com.amap.api.maps.model.particle.SizeOverLife@$refId::getSizeZ([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.amap.api.maps.model.particle.SizeOverLife::getSizeZ', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
}