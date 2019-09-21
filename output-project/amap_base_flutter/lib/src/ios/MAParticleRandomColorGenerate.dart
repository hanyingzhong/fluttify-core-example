import 'dart:typed_data';

import 'package:amap_base_flutter/amap_base_flutter.dart';
import 'package:flutter/services.dart';

// ignore_for_file: non_constant_identifier_names, camel_case_types
class MAParticleRandomColorGenerate extends NSObject
    with MAParticleColorGenerate {
  static final _channel = MethodChannel('me.yohom/amap_base_flutter');

  // 生成getters

  // 生成setters

  // 生成方法们
  Future<MAParticleRandomColorGenerate> initWithBoundaryColorR1(
      double r1,
      double g1,
      double b1,
      double a1,
      double r2,
      double g2,
      double b2,
      double a2) async {
    // 日志打印
    print(
        'fluttify-dart: MAParticleRandomColorGenerate@$refId::initWithBoundaryColorR1([\'r1\':$r1, \'g1\':$g1, \'b1\':$b1, \'a1\':$a1, \'r2\':$r2, \'g2\':$g2, \'b2\':$b2, \'a2\':$a2])');

    // 调用原生方法
    final result = await _channel.invokeMethod(
        'MAParticleRandomColorGenerate::initWithBoundaryColorR1', {
      "r1": r1,
      "g1": g1,
      "b1": b1,
      "a1": a1,
      "r2": r2,
      "g2": g2,
      "b2": b2,
      "a2": a2,
      "refId": refId
    });

    // 接受原生回调

    // 返回值
    return MAParticleRandomColorGenerate()..refId = result;
  }
}
