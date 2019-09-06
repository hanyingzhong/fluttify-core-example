import 'dart:typed_data';

import 'package:amap_base_flutter/amap_base_flutter.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class com_autonavi_ae_gmap_maploader_ProcessingTile extends Ref_Android {
  com_autonavi_ae_gmap_maploader_ProcessingTile.withRefId(int refId): super.withRefId(refId);

  static final _channel = MethodChannel('me.yohom/amap_base_flutter');

  // 生成getters
  Future<String> get_mKeyName() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.maploader.ProcessingTile::get_mKeyName", {'refId': refId});
    return result;
  }
  
  Future<int> get_mCreateTime() async {
    final result = await _channel.invokeMethod("com.autonavi.ae.gmap.maploader.ProcessingTile::get_mCreateTime", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_mKeyName(String mKeyName) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.maploader.ProcessingTile::set_mKeyName', {'refId': refId, "mKeyName": mKeyName});
  }
  
  Future<void> set_mCreateTime(int mCreateTime) async {
    await _channel.invokeMethod('com.autonavi.ae.gmap.maploader.ProcessingTile::set_mCreateTime', {'refId': refId, "mCreateTime": mCreateTime});
  }
  

  // 生成方法们
  static Future<com_autonavi_ae_gmap_maploader_ProcessingTile> obtain(String var0) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.ae.gmap.maploader.ProcessingTile::obtain([\'var0\':$var0])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.ae.gmap.maploader.ProcessingTile::obtain', {"var0": var0});
  
  
    // 接受原生回调
  
  
    // 返回值
    return com_autonavi_ae_gmap_maploader_ProcessingTile.withRefId(result);
  }
  
}