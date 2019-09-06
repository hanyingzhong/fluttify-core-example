import 'dart:typed_data';

import 'package:amap_base_flutter/amap_base_flutter.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class com_autonavi_amap_mapcore_message_AbstractGestureMapMessage extends com_autonavi_ae_gmap_AbstractMapMessage {
  com_autonavi_amap_mapcore_message_AbstractGestureMapMessage.withRefId(int refId): super.withRefId(refId);

  static final _channel = MethodChannel('me.yohom/amap_base_flutter');

  // 生成getters
  Future<int> get_width() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::get_width", {'refId': refId});
    return result;
  }
  
  Future<int> get_height() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::get_height", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isGestureScaleByMapCenter() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::get_isGestureScaleByMapCenter", {'refId': refId});
    return result;
  }
  
  Future<bool> get_isUseAnchor() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::get_isUseAnchor", {'refId': refId});
    return result;
  }
  
  Future<int> get_anchorX() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::get_anchorX", {'refId': refId});
    return result;
  }
  
  Future<int> get_anchorY() async {
    final result = await _channel.invokeMethod("com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::get_anchorY", {'refId': refId});
    return result;
  }
  

  // 生成setters
  Future<void> set_width(int width) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::set_width', {'refId': refId, "width": width});
  }
  
  Future<void> set_height(int height) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::set_height', {'refId': refId, "height": height});
  }
  
  Future<void> set_isGestureScaleByMapCenter(bool isGestureScaleByMapCenter) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::set_isGestureScaleByMapCenter', {'refId': refId, "isGestureScaleByMapCenter": isGestureScaleByMapCenter});
  }
  
  Future<void> set_isUseAnchor(bool isUseAnchor) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::set_isUseAnchor', {'refId': refId, "isUseAnchor": isUseAnchor});
  }
  
  Future<void> set_anchorX(int anchorX) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::set_anchorX', {'refId': refId, "anchorX": anchorX});
  }
  
  Future<void> set_anchorY(int anchorY) async {
    await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::set_anchorY', {'refId': refId, "anchorY": anchorY});
  }
  

  // 生成方法们
   Future<int> getType() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.AbstractGestureMapMessage@$refId::getType([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::getType', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> setState(int var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.AbstractGestureMapMessage@$refId::setState([\'var1\':$var1])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::setState', {"var1": var1, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> reset() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.AbstractGestureMapMessage@$refId::reset([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::reset', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<String> runCameraUpdate(com_autonavi_ae_gmap_GLMapState var1) async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.AbstractGestureMapMessage@$refId::runCameraUpdate([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::runCameraUpdate', {"var1": var1.refId, "refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
   Future<int> getMapGestureState() async {
    // 日志打印
    print('fluttify-dart: com.autonavi.amap.mapcore.message.AbstractGestureMapMessage@$refId::getMapGestureState([])');
  
    // 调用原生方法
    final result = await _channel.invokeMethod('com.autonavi.amap.mapcore.message.AbstractGestureMapMessage::getMapGestureState', {"refId": refId});
  
  
    // 接受原生回调
  
  
    // 返回值
    return result;
  }
  
}