//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_base_flutter/src/ios/ios.export.g.dart';
import 'package:amap_base_flutter/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import
class MAOverlayPathRenderer extends MAOverlayRenderer  {
  // generate getters
  Future<UIColor> get_fillColor() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("MAOverlayPathRenderer::get_fillColor", {'refId': refId});
    kNativeObjectPool.add(UIColor()..refId = result..tag = 'amap_base_flutter');
    return UIColor()..refId = result..tag = 'amap_base_flutter';
  }
  
  Future<UIColor> get_strokeColor() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("MAOverlayPathRenderer::get_strokeColor", {'refId': refId});
    kNativeObjectPool.add(UIColor()..refId = result..tag = 'amap_base_flutter');
    return UIColor()..refId = result..tag = 'amap_base_flutter';
  }
  
  Future<double> get_lineWidth() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("MAOverlayPathRenderer::get_lineWidth", {'refId': refId});
  
    return result;
  }
  
  Future<MALineJoinType> get_lineJoinType() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("MAOverlayPathRenderer::get_lineJoinType", {'refId': refId});
  
    return MALineJoinType.values[result];
  }
  
  Future<MALineCapType> get_lineCapType() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("MAOverlayPathRenderer::get_lineCapType", {'refId': refId});
  
    return MALineCapType.values[result];
  }
  
  Future<double> get_miterLimit() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("MAOverlayPathRenderer::get_miterLimit", {'refId': refId});
  
    return result;
  }
  
  Future<bool> get_lineDash() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("MAOverlayPathRenderer::get_lineDash", {'refId': refId});
  
    return result;
  }
  
  Future<MALineDashType> get_lineDashType() async {
    final result = await MethodChannel('me.yohom/amap_base_flutter').invokeMethod("MAOverlayPathRenderer::get_lineDashType", {'refId': refId});
  
    return MALineDashType.values[result];
  }
  

  // generate setters
  Future<void> set_fillColor(UIColor fillColor) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('MAOverlayPathRenderer::set_fillColor', {'refId': refId, "fillColor": fillColor.refId});
  
  
  }
  
  Future<void> set_strokeColor(UIColor strokeColor) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('MAOverlayPathRenderer::set_strokeColor', {'refId': refId, "strokeColor": strokeColor.refId});
  
  
  }
  
  Future<void> set_lineWidth(double lineWidth) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('MAOverlayPathRenderer::set_lineWidth', {'refId': refId, "lineWidth": lineWidth});
  
  
  }
  
  Future<void> set_lineJoinType(MALineJoinType lineJoinType) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('MAOverlayPathRenderer::set_lineJoinType', {'refId': refId, "lineJoinType": lineJoinType.index});
  
  
  }
  
  Future<void> set_lineCapType(MALineCapType lineCapType) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('MAOverlayPathRenderer::set_lineCapType', {'refId': refId, "lineCapType": lineCapType.index});
  
  
  }
  
  Future<void> set_miterLimit(double miterLimit) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('MAOverlayPathRenderer::set_miterLimit', {'refId': refId, "miterLimit": miterLimit});
  
  
  }
  
  Future<void> set_lineDash(bool lineDash) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('MAOverlayPathRenderer::set_lineDash', {'refId': refId, "lineDash": lineDash});
  
  
  }
  
  Future<void> set_lineDashType(MALineDashType lineDashType) async {
    await MethodChannel('me.yohom/amap_base_flutter').invokeMethod('MAOverlayPathRenderer::set_lineDashType', {'refId': refId, "lineDashType": lineDashType.index});
  
  
  }
  

  // generate methods
  
}