#import "MAMapViewFactory.h"
#import "AmapBaseFlutterPlugin.h"

typedef void (^Handler)(NSObject <FlutterPluginRegistrar> *, NSDictionary<NSString *, NSObject *> *, FlutterResult);

@implementation MAMapViewFactory {
  NSObject <FlutterPluginRegistrar> *_registrar;
}

- (instancetype)initWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
  }

  return self;
}

- (NSObject <FlutterPlatformView> *)createWithFrame:(CGRect)frame viewIdentifier:(int64_t)viewId arguments:(id _Nullable)args {
  return [[MAMapViewPlatformView alloc] initWithViewId:viewId registrar:_registrar];
}

@end

@implementation MAMapViewPlatformView {
  NSObject <FlutterPluginRegistrar> *_registrar;
  NSInteger _viewId;
  NSDictionary<NSString *, Handler> *_handlerMap;
}

- (instancetype)initWithViewId:(NSInteger)viewId registrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  self = [super init];
  if (self) {
    _viewId = viewId;
    _registrar = registrar;
  }

  return self;
}

- (UIView *)view {
  MAMapView *view = [[MAMapView alloc] init];
  HEAP[@(_viewId)] = view;

  //region handlers
  _handlerMap = @{
      @"MAMapView::setRegionAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* regionValue = (NSValue*) HEAP[@([args[@"region"] integerValue])];
          MACoordinateRegion region;
          [regionValue getValue:&region];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setRegion(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setRegion : region animated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::regionThatFits": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* regionValue = (NSValue*) HEAP[@([args[@"region"] integerValue])];
          MACoordinateRegion region;
          [regionValue getValue:&region];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::regionThatFits(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MACoordinateRegion result = [ref regionThatFits: region];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MACoordinateRegion)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAMapView::setVisibleMapRectAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* mapRectValue = (NSValue*) HEAP[@([args[@"mapRect"] integerValue])];
          MAMapRect mapRect;
          [mapRectValue getValue:&mapRect];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setVisibleMapRect(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setVisibleMapRect : mapRect animated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::mapRectThatFits": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* mapRectValue = (NSValue*) HEAP[@([args[@"mapRect"] integerValue])];
          MAMapRect mapRect;
          [mapRectValue getValue:&mapRect];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::mapRectThatFits(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAMapRect result = [ref mapRectThatFits: mapRect];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAMapView::setCenterCoordinateAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setCenterCoordinate(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setCenterCoordinate : coordinate animated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::setZoomLevelAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          CGFloat zoomLevel = [args[@"zoomLevel"] floatValue];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setZoomLevel(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setZoomLevel : zoomLevel animated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::setRotationDegreeAnimatedduration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          CGFloat rotationDegree = [args[@"rotationDegree"] floatValue];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
          // jsonable参数
          CFTimeInterval duration = [args[@"duration"] doubleValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setRotationDegree(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setRotationDegree : rotationDegree animated: animated duration: duration];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::setCameraDegreeAnimatedduration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          CGFloat cameraDegree = [args[@"cameraDegree"] floatValue];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
          // jsonable参数
          CFTimeInterval duration = [args[@"duration"] doubleValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setCameraDegree(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setCameraDegree : cameraDegree animated: animated duration: duration];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::getMapStatus": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::getMapStatus(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAMapStatus* result = [ref getMapStatus];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAMapView::setMapStatusAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapStatus* status = (MAMapStatus*) HEAP[@([args[@"status"] integerValue])];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setMapStatus(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setMapStatus : status animated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::metersPerPointForZoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          CGFloat zoomLevel = [args[@"zoomLevel"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::metersPerPointForZoomLevel(暂未实现参数打印)", @(refId));
      
          // 开始调用
          double result = [ref metersPerPointForZoomLevel: zoomLevel];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAMapView::convertCoordinateToPointToView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
          // 引用参数
          UIView* view = (UIView*) HEAP[@([args[@"view"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::convertCoordinate(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGPoint result = [ref convertCoordinate: coordinate toPointToView: view];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAMapView::convertPointToCoordinateFromView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* pointValue = (NSValue*) HEAP[@([args[@"point"] integerValue])];
          CGPoint point;
          [pointValue getValue:&point];
          // 引用参数
          UIView* view = (UIView*) HEAP[@([args[@"view"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::convertPoint(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CLLocationCoordinate2D result = [ref convertPoint: point toCoordinateFromView: view];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAMapView::convertRegionToRectToView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* regionValue = (NSValue*) HEAP[@([args[@"region"] integerValue])];
          MACoordinateRegion region;
          [regionValue getValue:&region];
          // 引用参数
          UIView* view = (UIView*) HEAP[@([args[@"view"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::convertRegion(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGRect result = [ref convertRegion: region toRectToView: view];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAMapView::convertRectToRegionFromView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* rectValue = (NSValue*) HEAP[@([args[@"rect"] integerValue])];
          CGRect rect;
          [rectValue getValue:&rect];
          // 引用参数
          UIView* view = (UIView*) HEAP[@([args[@"view"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::convertRect(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MACoordinateRegion result = [ref convertRect: rect toRegionFromView: view];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MACoordinateRegion)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAMapView::reloadMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::reloadMap(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref reloadMap ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::clearDisk": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::clearDisk(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref clearDisk ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::reloadInternalTexture": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::reloadInternalTexture(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref reloadInternalTexture ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::mapContentApprovalNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::mapContentApprovalNumber(暂未实现参数打印)", @(refId));
      
          // 开始调用
          NSString* result = [ref mapContentApprovalNumber];
      
          // 调用结果
          // 返回值: jsonable
          methodResult(result);
      },
      @"MAMapView::satelliteImageApprovalNumber": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::satelliteImageApprovalNumber(暂未实现参数打印)", @(refId));
      
          // 开始调用
          NSString* result = [ref satelliteImageApprovalNumber];
      
          // 调用结果
          // 返回值: jsonable
          methodResult(result);
      },
      @"MAMapView::forceRefresh": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::forceRefresh(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref forceRefresh ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::addAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAAnnotation> annotation = (id<MAAnnotation>) HEAP[@([args[@"annotation"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::addAnnotation(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref addAnnotation : annotation];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::removeAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAAnnotation> annotation = (id<MAAnnotation>) HEAP[@([args[@"annotation"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::removeAnnotation(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref removeAnnotation : annotation];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::viewForAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAAnnotation> annotation = (id<MAAnnotation>) HEAP[@([args[@"annotation"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::viewForAnnotation(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAAnnotationView* result = [ref viewForAnnotation: annotation];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAMapView::dequeueReusableAnnotationViewWithIdentifier": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          NSString* identifier = (NSString*) args[@"identifier"];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::dequeueReusableAnnotationViewWithIdentifier(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAAnnotationView* result = [ref dequeueReusableAnnotationViewWithIdentifier: identifier];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAMapView::selectAnnotationAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAAnnotation> annotation = (id<MAAnnotation>) HEAP[@([args[@"annotation"] integerValue])];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::selectAnnotation(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref selectAnnotation : annotation animated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::deselectAnnotationAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAAnnotation> annotation = (id<MAAnnotation>) HEAP[@([args[@"annotation"] integerValue])];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::deselectAnnotation(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref deselectAnnotation : annotation animated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::setUserTrackingModeAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 枚举参数
          MAUserTrackingMode mode = (MAUserTrackingMode) [args[@"mode"] integerValue];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setUserTrackingMode(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setUserTrackingMode : mode animated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::updateUserLocationRepresentation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAUserLocationRepresentation* representation = (MAUserLocationRepresentation*) HEAP[@([args[@"representation"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::updateUserLocationRepresentation(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref updateUserLocationRepresentation : representation];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::addOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAOverlay> overlay = (id<MAOverlay>) HEAP[@([args[@"overlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::addOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref addOverlay : overlay];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::removeOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAOverlay> overlay = (id<MAOverlay>) HEAP[@([args[@"overlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::removeOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref removeOverlay : overlay];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::insertOverlayAtIndexlevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAOverlay> overlay = (id<MAOverlay>) HEAP[@([args[@"overlay"] integerValue])];
          // jsonable参数
          NSUInteger index = [args[@"index"] unsignedIntegerValue];
          // 枚举参数
          MAOverlayLevel level = (MAOverlayLevel) [args[@"level"] integerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::insertOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref insertOverlay : overlay atIndex: index level: level];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::exchangeOverlayAtIndexWithOverlayAtIndex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          NSUInteger index1 = [args[@"index1"] unsignedIntegerValue];
          // jsonable参数
          NSUInteger index2 = [args[@"index2"] unsignedIntegerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::exchangeOverlayAtIndex(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref exchangeOverlayAtIndex : index1 withOverlayAtIndex: index2];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::exchangeOverlayWithOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAOverlay> overlay1 = (id<MAOverlay>) HEAP[@([args[@"overlay1"] integerValue])];
          // 引用参数
          id<MAOverlay> overlay2 = (id<MAOverlay>) HEAP[@([args[@"overlay2"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::exchangeOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref exchangeOverlay : overlay1 withOverlay: overlay2];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::rendererForOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAOverlay> overlay = (id<MAOverlay>) HEAP[@([args[@"overlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::rendererForOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAOverlayRenderer* result = [ref rendererForOverlay: overlay];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAMapView::setIndoorMapControlOrigin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* originValue = (NSValue*) HEAP[@([args[@"origin"] integerValue])];
          CGPoint origin;
          [originValue getValue:&origin];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setIndoorMapControlOrigin(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setIndoorMapControlOrigin : origin];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::setCurrentIndoorMapFloorIndex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          NSInteger floorIndex = [args[@"floorIndex"] integerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setCurrentIndoorMapFloorIndex(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setCurrentIndoorMapFloorIndex : floorIndex];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::clearIndoorMapCache": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::clearIndoorMapCache(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref clearIndoorMapCache ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::setCustomMapStyleOptions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapCustomStyleOptions* styleOptions = (MAMapCustomStyleOptions*) HEAP[@([args[@"styleOptions"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapView@%@::setCustomMapStyleOptions(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setCustomMapStyleOptions : styleOptions];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapView::get_mapType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_mapType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          MAMapType result = ref.mapType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_centerCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_centerCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.centerCoordinate;
      
          NSLog(@"MAMapView::get_centerCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_region": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_region");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          MACoordinateRegion result = ref.region;
      
          NSLog(@"MAMapView::get_region:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MACoordinateRegion)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_visibleMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_visibleMapRect");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          MAMapRect result = ref.visibleMapRect;
      
          NSLog(@"MAMapView::get_visibleMapRect:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_limitRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_limitRegion");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          MACoordinateRegion result = ref.limitRegion;
      
          NSLog(@"MAMapView::get_limitRegion:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MACoordinateRegion)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_limitMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_limitMapRect");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          MAMapRect result = ref.limitMapRect;
      
          NSLog(@"MAMapView::get_limitMapRect:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_zoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_zoomLevel");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.zoomLevel;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_minZoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_minZoomLevel");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.minZoomLevel;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_maxZoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_maxZoomLevel");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.maxZoomLevel;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_rotationDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_rotationDegree");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.rotationDegree;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_cameraDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_cameraDegree");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.cameraDegree;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_zoomingInPivotsAroundAnchorPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_zoomingInPivotsAroundAnchorPoint");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.zoomingInPivotsAroundAnchorPoint;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isZoomEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isZoomEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.zoomEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isScrollEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isScrollEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.scrollEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isRotateEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isRotateEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.rotateEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isRotateCameraEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isRotateCameraEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.rotateCameraEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isSkyModelEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isSkyModelEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.skyModelEnable;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isShowsBuildings": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isShowsBuildings");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsBuildings;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isShowsLabels": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isShowsLabels");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsLabels;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isShowTraffic": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isShowTraffic");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showTraffic;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_trafficRatio": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_trafficRatio");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.trafficRatio;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_touchPOIEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_touchPOIEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.touchPOIEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_showsCompass": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_showsCompass");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsCompass;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_compassOrigin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_compassOrigin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGPoint result = ref.compassOrigin;
      
          NSLog(@"MAMapView::get_compassOrigin:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_showsScale": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_showsScale");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsScale;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_scaleOrigin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_scaleOrigin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGPoint result = ref.scaleOrigin;
      
          NSLog(@"MAMapView::get_scaleOrigin:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_logoCenter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_logoCenter");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGPoint result = ref.logoCenter;
      
          NSLog(@"MAMapView::get_logoCenter:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_metersPerPointForCurrentZoom": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_metersPerPointForCurrentZoom");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          double result = ref.metersPerPointForCurrentZoom;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isAbroad": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isAbroad");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.isAbroad;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_maxRenderFrame": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_maxRenderFrame");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          NSUInteger result = ref.maxRenderFrame;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isAllowDecreaseFrame": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isAllowDecreaseFrame");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.isAllowDecreaseFrame;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_openGLESDisabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_openGLESDisabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.openGLESDisabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_screenAnchor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_screenAnchor");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGPoint result = ref.screenAnchor;
      
          NSLog(@"MAMapView::get_screenAnchor:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_annotationVisibleRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_annotationVisibleRect");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          CGRect result = ref.annotationVisibleRect;
      
          NSLog(@"MAMapView::get_annotationVisibleRect:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapView::get_allowsAnnotationViewSorting": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_allowsAnnotationViewSorting");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.allowsAnnotationViewSorting;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_showsUserLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_showsUserLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsUserLocation;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_userLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_userLocation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          MAUserLocation* result = ref.userLocation;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAMapView::get_customizeUserLocationAccuracyCircleRepresentation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_customizeUserLocationAccuracyCircleRepresentation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.customizeUserLocationAccuracyCircleRepresentation;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_userLocationAccuracyCircle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_userLocationAccuracyCircle");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          MACircle* result = ref.userLocationAccuracyCircle;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAMapView::get_userTrackingMode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_userTrackingMode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          MAUserTrackingMode result = ref.userTrackingMode;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isUserLocationVisible": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isUserLocationVisible");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.userLocationVisible;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_pausesLocationUpdatesAutomatically": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_pausesLocationUpdatesAutomatically");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.pausesLocationUpdatesAutomatically;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_allowsBackgroundLocationUpdates": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_allowsBackgroundLocationUpdates");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.allowsBackgroundLocationUpdates;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isShowsIndoorMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isShowsIndoorMap");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsIndoorMap;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_isShowsIndoorMapControl": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_isShowsIndoorMapControl");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsIndoorMapControl;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::get_customMapStyleEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::get_customMapStyleEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.customMapStyleEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapView::set_delegate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_delegate");
      
          // 参数
      
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.delegate = self;
          methodResult(@"success");
      },
      
      @"MAMapView::set_mapType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_mapType");
      
          // 参数
          // 枚举参数
          MAMapType mapType = (MAMapType) [args[@"mapType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.mapType = mapType;
          methodResult(@"success");
      },
      
      @"MAMapView::set_centerCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_centerCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* centerCoordinateValue = (NSValue*) HEAP[@([args[@"centerCoordinate"] integerValue])];
          CLLocationCoordinate2D centerCoordinate;
          [centerCoordinateValue getValue:&centerCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.centerCoordinate = centerCoordinate;
          methodResult(@"success");
      },
      
      @"MAMapView::set_region": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_region");
      
          // 参数
          // 结构体参数
          NSValue* regionValue = (NSValue*) HEAP[@([args[@"region"] integerValue])];
          MACoordinateRegion region;
          [regionValue getValue:&region];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.region = region;
          methodResult(@"success");
      },
      
      @"MAMapView::set_visibleMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_visibleMapRect");
      
          // 参数
          // 结构体参数
          NSValue* visibleMapRectValue = (NSValue*) HEAP[@([args[@"visibleMapRect"] integerValue])];
          MAMapRect visibleMapRect;
          [visibleMapRectValue getValue:&visibleMapRect];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.visibleMapRect = visibleMapRect;
          methodResult(@"success");
      },
      
      @"MAMapView::set_limitRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_limitRegion");
      
          // 参数
          // 结构体参数
          NSValue* limitRegionValue = (NSValue*) HEAP[@([args[@"limitRegion"] integerValue])];
          MACoordinateRegion limitRegion;
          [limitRegionValue getValue:&limitRegion];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.limitRegion = limitRegion;
          methodResult(@"success");
      },
      
      @"MAMapView::set_limitMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_limitMapRect");
      
          // 参数
          // 结构体参数
          NSValue* limitMapRectValue = (NSValue*) HEAP[@([args[@"limitMapRect"] integerValue])];
          MAMapRect limitMapRect;
          [limitMapRectValue getValue:&limitMapRect];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.limitMapRect = limitMapRect;
          methodResult(@"success");
      },
      
      @"MAMapView::set_zoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_zoomLevel");
      
          // 参数
          // jsonable参数
          CGFloat zoomLevel = [args[@"zoomLevel"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.zoomLevel = zoomLevel;
          methodResult(@"success");
      },
      
      @"MAMapView::set_minZoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_minZoomLevel");
      
          // 参数
          // jsonable参数
          CGFloat minZoomLevel = [args[@"minZoomLevel"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.minZoomLevel = minZoomLevel;
          methodResult(@"success");
      },
      
      @"MAMapView::set_maxZoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_maxZoomLevel");
      
          // 参数
          // jsonable参数
          CGFloat maxZoomLevel = [args[@"maxZoomLevel"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.maxZoomLevel = maxZoomLevel;
          methodResult(@"success");
      },
      
      @"MAMapView::set_rotationDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_rotationDegree");
      
          // 参数
          // jsonable参数
          CGFloat rotationDegree = [args[@"rotationDegree"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.rotationDegree = rotationDegree;
          methodResult(@"success");
      },
      
      @"MAMapView::set_cameraDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_cameraDegree");
      
          // 参数
          // jsonable参数
          CGFloat cameraDegree = [args[@"cameraDegree"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.cameraDegree = cameraDegree;
          methodResult(@"success");
      },
      
      @"MAMapView::set_zoomingInPivotsAroundAnchorPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_zoomingInPivotsAroundAnchorPoint");
      
          // 参数
          // jsonable参数
          BOOL zoomingInPivotsAroundAnchorPoint = [args[@"zoomingInPivotsAroundAnchorPoint"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.zoomingInPivotsAroundAnchorPoint = zoomingInPivotsAroundAnchorPoint;
          methodResult(@"success");
      },
      
      @"MAMapView::set_zoomEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_zoomEnabled");
      
          // 参数
          // jsonable参数
          BOOL zoomEnabled = [args[@"zoomEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.zoomEnabled = zoomEnabled;
          methodResult(@"success");
      },
      
      @"MAMapView::set_scrollEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_scrollEnabled");
      
          // 参数
          // jsonable参数
          BOOL scrollEnabled = [args[@"scrollEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.scrollEnabled = scrollEnabled;
          methodResult(@"success");
      },
      
      @"MAMapView::set_rotateEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_rotateEnabled");
      
          // 参数
          // jsonable参数
          BOOL rotateEnabled = [args[@"rotateEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.rotateEnabled = rotateEnabled;
          methodResult(@"success");
      },
      
      @"MAMapView::set_rotateCameraEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_rotateCameraEnabled");
      
          // 参数
          // jsonable参数
          BOOL rotateCameraEnabled = [args[@"rotateCameraEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.rotateCameraEnabled = rotateCameraEnabled;
          methodResult(@"success");
      },
      
      @"MAMapView::set_skyModelEnable": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_skyModelEnable");
      
          // 参数
          // jsonable参数
          BOOL skyModelEnable = [args[@"skyModelEnable"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.skyModelEnable = skyModelEnable;
          methodResult(@"success");
      },
      
      @"MAMapView::set_showsBuildings": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_showsBuildings");
      
          // 参数
          // jsonable参数
          BOOL showsBuildings = [args[@"showsBuildings"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.showsBuildings = showsBuildings;
          methodResult(@"success");
      },
      
      @"MAMapView::set_showsLabels": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_showsLabels");
      
          // 参数
          // jsonable参数
          BOOL showsLabels = [args[@"showsLabels"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.showsLabels = showsLabels;
          methodResult(@"success");
      },
      
      @"MAMapView::set_showTraffic": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_showTraffic");
      
          // 参数
          // jsonable参数
          BOOL showTraffic = [args[@"showTraffic"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.showTraffic = showTraffic;
          methodResult(@"success");
      },
      
      @"MAMapView::set_trafficRatio": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_trafficRatio");
      
          // 参数
          // jsonable参数
          CGFloat trafficRatio = [args[@"trafficRatio"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.trafficRatio = trafficRatio;
          methodResult(@"success");
      },
      
      @"MAMapView::set_touchPOIEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_touchPOIEnabled");
      
          // 参数
          // jsonable参数
          BOOL touchPOIEnabled = [args[@"touchPOIEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.touchPOIEnabled = touchPOIEnabled;
          methodResult(@"success");
      },
      
      @"MAMapView::set_showsCompass": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_showsCompass");
      
          // 参数
          // jsonable参数
          BOOL showsCompass = [args[@"showsCompass"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.showsCompass = showsCompass;
          methodResult(@"success");
      },
      
      @"MAMapView::set_compassOrigin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_compassOrigin");
      
          // 参数
          // 结构体参数
          NSValue* compassOriginValue = (NSValue*) HEAP[@([args[@"compassOrigin"] integerValue])];
          CGPoint compassOrigin;
          [compassOriginValue getValue:&compassOrigin];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.compassOrigin = compassOrigin;
          methodResult(@"success");
      },
      
      @"MAMapView::set_showsScale": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_showsScale");
      
          // 参数
          // jsonable参数
          BOOL showsScale = [args[@"showsScale"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.showsScale = showsScale;
          methodResult(@"success");
      },
      
      @"MAMapView::set_scaleOrigin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_scaleOrigin");
      
          // 参数
          // 结构体参数
          NSValue* scaleOriginValue = (NSValue*) HEAP[@([args[@"scaleOrigin"] integerValue])];
          CGPoint scaleOrigin;
          [scaleOriginValue getValue:&scaleOrigin];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.scaleOrigin = scaleOrigin;
          methodResult(@"success");
      },
      
      @"MAMapView::set_logoCenter": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_logoCenter");
      
          // 参数
          // 结构体参数
          NSValue* logoCenterValue = (NSValue*) HEAP[@([args[@"logoCenter"] integerValue])];
          CGPoint logoCenter;
          [logoCenterValue getValue:&logoCenter];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.logoCenter = logoCenter;
          methodResult(@"success");
      },
      
      @"MAMapView::set_maxRenderFrame": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_maxRenderFrame");
      
          // 参数
          // jsonable参数
          NSUInteger maxRenderFrame = [args[@"maxRenderFrame"] unsignedIntegerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.maxRenderFrame = maxRenderFrame;
          methodResult(@"success");
      },
      
      @"MAMapView::set_isAllowDecreaseFrame": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_isAllowDecreaseFrame");
      
          // 参数
          // jsonable参数
          BOOL isAllowDecreaseFrame = [args[@"isAllowDecreaseFrame"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.isAllowDecreaseFrame = isAllowDecreaseFrame;
          methodResult(@"success");
      },
      
      @"MAMapView::set_openGLESDisabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_openGLESDisabled");
      
          // 参数
          // jsonable参数
          BOOL openGLESDisabled = [args[@"openGLESDisabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.openGLESDisabled = openGLESDisabled;
          methodResult(@"success");
      },
      
      @"MAMapView::set_screenAnchor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_screenAnchor");
      
          // 参数
          // 结构体参数
          NSValue* screenAnchorValue = (NSValue*) HEAP[@([args[@"screenAnchor"] integerValue])];
          CGPoint screenAnchor;
          [screenAnchorValue getValue:&screenAnchor];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.screenAnchor = screenAnchor;
          methodResult(@"success");
      },
      
      @"MAMapView::set_allowsAnnotationViewSorting": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_allowsAnnotationViewSorting");
      
          // 参数
          // jsonable参数
          BOOL allowsAnnotationViewSorting = [args[@"allowsAnnotationViewSorting"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.allowsAnnotationViewSorting = allowsAnnotationViewSorting;
          methodResult(@"success");
      },
      
      @"MAMapView::set_showsUserLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_showsUserLocation");
      
          // 参数
          // jsonable参数
          BOOL showsUserLocation = [args[@"showsUserLocation"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.showsUserLocation = showsUserLocation;
          methodResult(@"success");
      },
      
      @"MAMapView::set_customizeUserLocationAccuracyCircleRepresentation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_customizeUserLocationAccuracyCircleRepresentation");
      
          // 参数
          // jsonable参数
          BOOL customizeUserLocationAccuracyCircleRepresentation = [args[@"customizeUserLocationAccuracyCircleRepresentation"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.customizeUserLocationAccuracyCircleRepresentation = customizeUserLocationAccuracyCircleRepresentation;
          methodResult(@"success");
      },
      
      @"MAMapView::set_userTrackingMode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_userTrackingMode");
      
          // 参数
          // 枚举参数
          MAUserTrackingMode userTrackingMode = (MAUserTrackingMode) [args[@"userTrackingMode"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.userTrackingMode = userTrackingMode;
          methodResult(@"success");
      },
      
      @"MAMapView::set_pausesLocationUpdatesAutomatically": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_pausesLocationUpdatesAutomatically");
      
          // 参数
          // jsonable参数
          BOOL pausesLocationUpdatesAutomatically = [args[@"pausesLocationUpdatesAutomatically"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.pausesLocationUpdatesAutomatically = pausesLocationUpdatesAutomatically;
          methodResult(@"success");
      },
      
      @"MAMapView::set_allowsBackgroundLocationUpdates": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_allowsBackgroundLocationUpdates");
      
          // 参数
          // jsonable参数
          BOOL allowsBackgroundLocationUpdates = [args[@"allowsBackgroundLocationUpdates"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.allowsBackgroundLocationUpdates = allowsBackgroundLocationUpdates;
          methodResult(@"success");
      },
      
      @"MAMapView::set_showsIndoorMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_showsIndoorMap");
      
          // 参数
          // jsonable参数
          BOOL showsIndoorMap = [args[@"showsIndoorMap"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.showsIndoorMap = showsIndoorMap;
          methodResult(@"success");
      },
      
      @"MAMapView::set_showsIndoorMapControl": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_showsIndoorMapControl");
      
          // 参数
          // jsonable参数
          BOOL showsIndoorMapControl = [args[@"showsIndoorMapControl"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.showsIndoorMapControl = showsIndoorMapControl;
          methodResult(@"success");
      },
      
      @"MAMapView::set_customMapStyleEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapView::set_customMapStyleEnabled");
      
          // 参数
          // jsonable参数
          BOOL customMapStyleEnabled = [args[@"customMapStyleEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapView* ref = (MAMapView*) HEAP[@(refId)];
      
          ref.customMapStyleEnabled = customMapStyleEnabled;
          methodResult(@"success");
      },
      
  };
  //endregion

  //region method call handler
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"me.yohom/amap_base_flutter/MAMapView"
            binaryMessenger:[_registrar messenger]];

  [channel setMethodCallHandler:^(FlutterMethodCall *methodCall, FlutterResult methodResult) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) [methodCall arguments];
    if (_handlerMap[methodCall.method] != nil) {
      _handlerMap[methodCall.method](_registrar, args, methodResult);
    } else {
      methodResult(FlutterMethodNotImplemented);
    }
  }];
  //endregion
  return view;
}

- (void)dealloc {
  [HEAP removeObjectForKey:@(_viewId)];
}


//region delegate
- (void)traceManager : (MATraceManager*)manager didTrace: (NSArray<CLLocation*>*)locations correct: (NSArray<MATracePoint*>*)tracePoints distance: (double)distance withError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MATraceDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MATraceDelegate::traceManagerDidTracecorrectdistancewithError");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmanager = @(manager.hash);
  HEAP[argmanager] = manager;
  // 列表回调参数
  NSMutableArray<NSNumber*>* arglocations = [NSMutableArray arrayWithCapacity:locations.count];
  for (int i = 0; i < locations.count; i++) {
      arglocations[i] = @(locations.hash);
      HEAP[@(locations.hash)] = locations;
  }
  // 列表回调参数
  NSMutableArray<NSNumber*>* argtracePoints = [NSMutableArray arrayWithCapacity:tracePoints.count];
  for (int i = 0; i < tracePoints.count; i++) {
      argtracePoints[i] = @(tracePoints.hash);
      HEAP[@(tracePoints.hash)] = tracePoints;
  }
  // primitive回调参数
  NSNumber* argdistance = @(distance);
  // 引用回调参数
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::MATraceDelegate::traceManagerDidTracecorrectdistancewithError" arguments:@{@"manager": argmanager, @"locations": arglocations, @"tracePoints": argtracePoints, @"distance": argdistance, @"error": argerror}];
  
}

- (void)mapViewRequireLocationAuth : (CLLocationManager*)locationManager
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MATraceDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MATraceDelegate::mapViewRequireLocationAuth");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* arglocationManager = @(locationManager.hash);
  HEAP[arglocationManager] = locationManager;

  [channel invokeMethod:@"Callback::MATraceDelegate::mapViewRequireLocationAuth" arguments:@{@"locationManager": arglocationManager}];
  
}

- (void)multiPointOverlayRenderer : (MAMultiPointOverlayRenderer*)renderer didItemTapped: (MAMultiPointItem*)item
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMultiPointOverlayRendererDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMultiPointOverlayRendererDelegate::multiPointOverlayRendererDidItemTapped");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argrenderer = @(renderer.hash);
  HEAP[argrenderer] = renderer;
  // 引用回调参数
  NSNumber* argitem = @(item.hash);
  HEAP[argitem] = item;

  [channel invokeMethod:@"Callback::MAMultiPointOverlayRendererDelegate::multiPointOverlayRendererDidItemTapped" arguments:@{@"renderer": argrenderer, @"item": argitem}];
  
}

- (void)mapViewRegionChanged : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewRegionChanged");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewRegionChanged" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapView : (MAMapView*)mapView regionWillChangeAnimated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewRegionWillChangeAnimated");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive回调参数
  NSNumber* arganimated = @(animated);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewRegionWillChangeAnimated" arguments:@{@"mapView": argmapView, @"animated": arganimated}];
  
}

- (void)mapView : (MAMapView*)mapView regionDidChangeAnimated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewRegionDidChangeAnimated");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive回调参数
  NSNumber* arganimated = @(animated);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewRegionDidChangeAnimated" arguments:@{@"mapView": argmapView, @"animated": arganimated}];
  
}

- (void)mapView : (MAMapView*)mapView mapWillMoveByUser: (BOOL)wasUserAction
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewMapWillMoveByUser");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive回调参数
  NSNumber* argwasUserAction = @(wasUserAction);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewMapWillMoveByUser" arguments:@{@"mapView": argmapView, @"wasUserAction": argwasUserAction}];
  
}

- (void)mapView : (MAMapView*)mapView mapDidMoveByUser: (BOOL)wasUserAction
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewMapDidMoveByUser");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive回调参数
  NSNumber* argwasUserAction = @(wasUserAction);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewMapDidMoveByUser" arguments:@{@"mapView": argmapView, @"wasUserAction": argwasUserAction}];
  
}

- (void)mapView : (MAMapView*)mapView mapWillZoomByUser: (BOOL)wasUserAction
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewMapWillZoomByUser");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive回调参数
  NSNumber* argwasUserAction = @(wasUserAction);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewMapWillZoomByUser" arguments:@{@"mapView": argmapView, @"wasUserAction": argwasUserAction}];
  
}

- (void)mapView : (MAMapView*)mapView mapDidZoomByUser: (BOOL)wasUserAction
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewMapDidZoomByUser");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive回调参数
  NSNumber* argwasUserAction = @(wasUserAction);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewMapDidZoomByUser" arguments:@{@"mapView": argmapView, @"wasUserAction": argwasUserAction}];
  
}

- (void)mapViewWillStartLoadingMap : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewWillStartLoadingMap");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewWillStartLoadingMap" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapViewDidFinishLoadingMap : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidFinishLoadingMap");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidFinishLoadingMap" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapViewDidFailLoadingMap : (MAMapView*)mapView withError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidFailLoadingMapWithError");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidFailLoadingMapWithError" arguments:@{@"mapView": argmapView, @"error": argerror}];
  
}

- (MAAnnotationView*)mapView : (MAMapView*)mapView viewForAnnotation: (id<MAAnnotation>)annotation
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewViewForAnnotation");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argannotation = @(annotation.hash);
  HEAP[argannotation] = annotation;

  // __block #__callback_result_type__# _callbackResult = nil;
  // [channel invokeMethod:@"#__callback_method__#"
  //             arguments:@{#__callback_args__#}
  //                result:^(id result) {
  //                  #__raw_callback_result__#
  //                }];
  //
  // while (_callbackResult == nil) {
  //   // _callbackResult有值前, 空转
  // }
  //
  // #__struct_value__#
  //
  // return #__callback_result__#;
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  return nil;
}

- (void)mapView : (MAMapView*)mapView didAddAnnotationViews: (NSArray*)views
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidAddAnnotationViews");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 列表回调参数
  NSMutableArray<NSNumber*>* argviews = [NSMutableArray arrayWithCapacity:views.count];
  for (int i = 0; i < views.count; i++) {
      argviews[i] = @(views.hash);
      HEAP[@(views.hash)] = views;
  }

  // 暂不支持含有数组的方法
}

- (void)mapView : (MAMapView*)mapView didSelectAnnotationView: (MAAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidSelectAnnotationView");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidSelectAnnotationView" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (MAMapView*)mapView didDeselectAnnotationView: (MAAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidDeselectAnnotationView");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidDeselectAnnotationView" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapViewWillStartLocatingUser : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewWillStartLocatingUser");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewWillStartLocatingUser" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapViewDidStopLocatingUser : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidStopLocatingUser");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidStopLocatingUser" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapView : (MAMapView*)mapView didUpdateUserLocation: (MAUserLocation*)userLocation updatingLocation: (BOOL)updatingLocation
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidUpdateUserLocationupdatingLocation");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* arguserLocation = @(userLocation.hash);
  HEAP[arguserLocation] = userLocation;
  // primitive回调参数
  NSNumber* argupdatingLocation = @(updatingLocation);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidUpdateUserLocationupdatingLocation" arguments:@{@"mapView": argmapView, @"userLocation": arguserLocation, @"updatingLocation": argupdatingLocation}];
  
}

- (void)mapView : (MAMapView*)mapView didFailToLocateUserWithError: (NSError*)error
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidFailToLocateUserWithError");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argerror = @(error.hash);
  HEAP[argerror] = error;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidFailToLocateUserWithError" arguments:@{@"mapView": argmapView, @"error": argerror}];
  
}

- (void)mapView : (MAMapView*)mapView annotationView: (MAAnnotationView*)view didChangeDragState: (MAAnnotationViewDragState)newState fromOldState: (MAAnnotationViewDragState)oldState
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewAnnotationViewdidChangeDragStatefromOldState");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;
  NSNumber* argnewState = @((NSInteger) newState);
  NSNumber* argoldState = @((NSInteger) oldState);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewAnnotationViewdidChangeDragStatefromOldState" arguments:@{@"mapView": argmapView, @"view": argview, @"newState": argnewState, @"oldState": argoldState}];
  
}

- (MAOverlayRenderer*)mapView : (MAMapView*)mapView rendererForOverlay: (id<MAOverlay>)overlay
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewRendererForOverlay");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argoverlay = @(overlay.hash);
  HEAP[argoverlay] = overlay;

  // __block #__callback_result_type__# _callbackResult = nil;
  // [channel invokeMethod:@"#__callback_method__#"
  //             arguments:@{#__callback_args__#}
  //                result:^(id result) {
  //                  #__raw_callback_result__#
  //                }];
  //
  // while (_callbackResult == nil) {
  //   // _callbackResult有值前, 空转
  // }
  //
  // #__struct_value__#
  //
  // return #__callback_result__#;
  
  // 由于flutter无法同步调用method channel, 所以暂不支持有返回值的回调方法
  // 相关issue https://github.com/flutter/flutter/issues/28310
  NSLog(@"暂不支持有返回值的回调方法");
  
  return nil;
}

- (void)mapView : (MAMapView*)mapView didAddOverlayRenderers: (NSArray*)overlayRenderers
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidAddOverlayRenderers");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 列表回调参数
  NSMutableArray<NSNumber*>* argoverlayRenderers = [NSMutableArray arrayWithCapacity:overlayRenderers.count];
  for (int i = 0; i < overlayRenderers.count; i++) {
      argoverlayRenderers[i] = @(overlayRenderers.hash);
      HEAP[@(overlayRenderers.hash)] = overlayRenderers;
  }

  // 暂不支持含有数组的方法
}

- (void)mapView : (MAMapView*)mapView annotationView: (MAAnnotationView*)view calloutAccessoryControlTapped: (UIControl*)control
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewAnnotationViewcalloutAccessoryControlTapped");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;
  // 引用回调参数
  NSNumber* argcontrol = @(control.hash);
  HEAP[argcontrol] = control;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewAnnotationViewcalloutAccessoryControlTapped" arguments:@{@"mapView": argmapView, @"view": argview, @"control": argcontrol}];
  
}

- (void)mapView : (MAMapView*)mapView didAnnotationViewCalloutTapped: (MAAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidAnnotationViewCalloutTapped");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidAnnotationViewCalloutTapped" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (MAMapView*)mapView didAnnotationViewTapped: (MAAnnotationView*)view
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidAnnotationViewTapped");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argview = @(view.hash);
  HEAP[argview] = view;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidAnnotationViewTapped" arguments:@{@"mapView": argmapView, @"view": argview}];
  
}

- (void)mapView : (MAMapView*)mapView didChangeUserTrackingMode: (MAUserTrackingMode)mode animated: (BOOL)animated
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidChangeUserTrackingModeanimated");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  NSNumber* argmode = @((NSInteger) mode);
  // primitive回调参数
  NSNumber* arganimated = @(animated);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidChangeUserTrackingModeanimated" arguments:@{@"mapView": argmapView, @"mode": argmode, @"animated": arganimated}];
  
}

- (void)mapView : (MAMapView*)mapView didChangeOpenGLESDisabled: (BOOL)openGLESDisabled
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidChangeOpenGLESDisabled");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // primitive回调参数
  NSNumber* argopenGLESDisabled = @(openGLESDisabled);

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidChangeOpenGLESDisabled" arguments:@{@"mapView": argmapView, @"openGLESDisabled": argopenGLESDisabled}];
  
}

- (void)mapView : (MAMapView*)mapView didTouchPois: (NSArray*)pois
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidTouchPois");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 列表回调参数
  NSMutableArray<NSNumber*>* argpois = [NSMutableArray arrayWithCapacity:pois.count];
  for (int i = 0; i < pois.count; i++) {
      argpois[i] = @(pois.hash);
      HEAP[@(pois.hash)] = pois;
  }

  // 暂不支持含有数组的方法
}

- (void)mapView : (MAMapView*)mapView didSingleTappedAtCoordinate: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidSingleTappedAtCoordinate");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 结构体回调参数
  NSValue* coordinateValue = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  NSNumber* argcoordinate = @(coordinateValue.hash);
  HEAP[argcoordinate] = coordinateValue;
  

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidSingleTappedAtCoordinate" arguments:@{@"mapView": argmapView, @"coordinate": argcoordinate}];
  
}

- (void)mapView : (MAMapView*)mapView didLongPressedAtCoordinate: (CLLocationCoordinate2D)coordinate
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidLongPressedAtCoordinate");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 结构体回调参数
  NSValue* coordinateValue = [NSValue value:&coordinate withObjCType:@encode(CLLocationCoordinate2D)];
  NSNumber* argcoordinate = @(coordinateValue.hash);
  HEAP[argcoordinate] = coordinateValue;
  

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidLongPressedAtCoordinate" arguments:@{@"mapView": argmapView, @"coordinate": argcoordinate}];
  
}

- (void)mapInitComplete : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapInitComplete");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapInitComplete" arguments:@{@"mapView": argmapView}];
  
}

- (void)mapView : (MAMapView*)mapView didIndoorMapShowed: (MAIndoorInfo*)indoorInfo
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidIndoorMapShowed");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argindoorInfo = @(indoorInfo.hash);
  HEAP[argindoorInfo] = indoorInfo;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidIndoorMapShowed" arguments:@{@"mapView": argmapView, @"indoorInfo": argindoorInfo}];
  
}

- (void)mapView : (MAMapView*)mapView didIndoorMapFloorIndexChanged: (MAIndoorInfo*)indoorInfo
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidIndoorMapFloorIndexChanged");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argindoorInfo = @(indoorInfo.hash);
  HEAP[argindoorInfo] = indoorInfo;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidIndoorMapFloorIndexChanged" arguments:@{@"mapView": argmapView, @"indoorInfo": argindoorInfo}];
  
}

- (void)mapView : (MAMapView*)mapView didIndoorMapHidden: (MAIndoorInfo*)indoorInfo
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::mapViewDidIndoorMapHidden");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;
  // 引用回调参数
  NSNumber* argindoorInfo = @(indoorInfo.hash);
  HEAP[argindoorInfo] = indoorInfo;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::mapViewDidIndoorMapHidden" arguments:@{@"mapView": argmapView, @"indoorInfo": argindoorInfo}];
  
}

- (void)offlineDataWillReload : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::offlineDataWillReload");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::offlineDataWillReload" arguments:@{@"mapView": argmapView}];
  
}

- (void)offlineDataDidReload : (MAMapView*)mapView
{
  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"MAMapViewDelegate::Callback"
            binaryMessenger:[_registrar messenger]];

  NSLog(@"MAMapViewDelegate::offlineDataDidReload");

  // 构造可以直接传输的参数
  // 引用回调参数
  NSNumber* argmapView = @(mapView.hash);
  HEAP[argmapView] = mapView;

  [channel invokeMethod:@"Callback::MAMapViewDelegate::offlineDataDidReload" arguments:@{@"mapView": argmapView}];
  
}

//endregion

@end
