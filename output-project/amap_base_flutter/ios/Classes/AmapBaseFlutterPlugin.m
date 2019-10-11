#import "AmapBaseFlutterPlugin.h"

typedef void (^Handler)(NSObject <FlutterPluginRegistrar> *, NSDictionary<NSString *, NSObject *> *, FlutterResult);

NSMutableDictionary<NSNumber *, NSObject *> *HEAP;

@implementation AmapBaseFlutterPlugin {
  NSObject <FlutterPluginRegistrar> * _registrar;
  NSDictionary<NSString *, Handler> *_handlerMap;
}

- (instancetype) initWithFlutterPluginRegistrar: (NSObject <FlutterPluginRegistrar> *) registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
    // 处理方法们
    _handlerMap = @{
      @"AMapURLSearch::getLatestAMapApp": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::getLatestAMapApp(暂未实现参数打印)");
      
          // 开始调用
          [AMapURLSearch getLatestAMapApp ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"AMapURLSearch::openAMapNavigation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapNaviConfig* config = (AMapNaviConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapNavigation(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapNavigation: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapURLSearch::openAMapRouteSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapRouteConfig* config = (AMapRouteConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapRouteSearch(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapRouteSearch: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapURLSearch::openAMapPOISearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          AMapPOIConfig* config = (AMapPOIConfig*) HEAP[@([args[@"config"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapURLSearch::openAMapPOISearch(暂未实现参数打印)");
      
          // 开始调用
          BOOL result = [AMapURLSearch openAMapPOISearch: config];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"AMapServices::sharedServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: AMapServices::sharedServices(暂未实现参数打印)");
      
          // 开始调用
          AMapServices* result = [AMapServices sharedServices];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAPolygonRenderer::initWithPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAPolygon* polygon = (MAPolygon*) HEAP[@([args[@"polygon"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolygonRenderer* ref = (MAPolygonRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolygonRenderer@%@::initWithPolygon(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAPolygonRenderer* result = [ref initWithPolygon: polygon];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAMapStatus::statusWithCenterCoordinateZoomLevelrotationDegreecameraDegreescreenAnchor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
          // jsonable参数
          CGFloat zoomLevel = [args[@"zoomLevel"] floatValue];
          // jsonable参数
          CGFloat rotationDegree = [args[@"rotationDegree"] floatValue];
          // jsonable参数
          CGFloat cameraDegree = [args[@"cameraDegree"] floatValue];
          // 结构体参数
          NSValue* screenAnchorValue = (NSValue*) HEAP[@([args[@"screenAnchor"] integerValue])];
          CGPoint screenAnchor;
          [screenAnchorValue getValue:&screenAnchor];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapStatus::statusWithCenterCoordinate(暂未实现参数打印)");
      
          // 开始调用
          MAMapStatus* result = [MAMapStatus statusWithCenterCoordinate: coordinate zoomLevel: zoomLevel rotationDegree: rotationDegree cameraDegree: cameraDegree screenAnchor: screenAnchor];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MACircle::circleWithMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* mapRectValue = (NSValue*) HEAP[@([args[@"mapRect"] integerValue])];
          MAMapRect mapRect;
          [mapRectValue getValue:&mapRect];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MACircle::circleWithMapRect(暂未实现参数打印)");
      
          // 开始调用
          MACircle* result = [MACircle circleWithMapRect: mapRect];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAArcRenderer::initWithArc": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAArc* arc = (MAArc*) HEAP[@([args[@"arc"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAArcRenderer* ref = (MAArcRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAArcRenderer@%@::initWithArc(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAArcRenderer* result = [ref initWithArc: arc];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAAnnotation::setCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* newCoordinateValue = (NSValue*) HEAP[@([args[@"newCoordinate"] integerValue])];
          CLLocationCoordinate2D newCoordinate;
          [newCoordinateValue getValue:&newCoordinate];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnnotation> ref = (id<MAAnnotation>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotation@%@::setCoordinate(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setCoordinate : newCoordinate];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAAnimatableAnnotation::step": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          CGFloat timeDelta = [args[@"timeDelta"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnimatableAnnotation> ref = (id<MAAnimatableAnnotation>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnimatableAnnotation@%@::step(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref step : timeDelta];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAAnimatableAnnotation::isAnimationFinished": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnimatableAnnotation> ref = (id<MAAnimatableAnnotation>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnimatableAnnotation@%@::isAnimationFinished(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref isAnimationFinished];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAAnimatableAnnotation::shouldAnimationStart": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnimatableAnnotation> ref = (id<MAAnimatableAnnotation>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnimatableAnnotation@%@::shouldAnimationStart(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref shouldAnimationStart];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAAnimatableAnnotation::rotateDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnimatableAnnotation> ref = (id<MAAnimatableAnnotation>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnimatableAnnotation@%@::rotateDegree(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CLLocationDirection result = [ref rotateDegree];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAPolygon::polygonWithCoordinatesCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordsRefIdArray = (NSArray*) args[@"coords"];
          CLLocationCoordinate2D coords[coordsRefIdArray.count];
      
          for (int i = 0; i < coordsRefIdArray.count; i++) {
              NSValue* coordsValue = (NSValue*) HEAP[[coordsRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordsItem;
              [coordsValue getValue:&coordsItem];
              coords[i] = coordsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolygon::polygonWithCoordinates(暂未实现参数打印)");
      
          // 开始调用
          MAPolygon* result = [MAPolygon polygonWithCoordinates: coords count: count];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAPolygon::polygonWithPointsCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* pointsRefIdArray = (NSArray*) args[@"points"];
          MAMapPoint points[pointsRefIdArray.count];
      
          for (int i = 0; i < pointsRefIdArray.count; i++) {
              NSValue* pointsValue = (NSValue*) HEAP[[pointsRefIdArray objectAtIndex:i]];
              MAMapPoint pointsItem;
              [pointsValue getValue:&pointsItem];
              points[i] = pointsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolygon::polygonWithPoints(暂未实现参数打印)");
      
          // 开始调用
          MAPolygon* result = [MAPolygon polygonWithPoints: points count: count];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAPolygon::setPolygonWithPointsCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* pointsRefIdArray = (NSArray*) args[@"points"];
          MAMapPoint points[pointsRefIdArray.count];
      
          for (int i = 0; i < pointsRefIdArray.count; i++) {
              NSValue* pointsValue = (NSValue*) HEAP[[pointsRefIdArray objectAtIndex:i]];
              MAMapPoint pointsItem;
              [pointsValue getValue:&pointsItem];
              points[i] = pointsItem;
          }
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolygon* ref = (MAPolygon*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolygon@%@::setPolygonWithPoints(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref setPolygonWithPoints: points count: count];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAPolygon::setPolygonWithCoordinatesCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordsRefIdArray = (NSArray*) args[@"coords"];
          CLLocationCoordinate2D coords[coordsRefIdArray.count];
      
          for (int i = 0; i < coordsRefIdArray.count; i++) {
              NSValue* coordsValue = (NSValue*) HEAP[[coordsRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordsItem;
              [coordsValue getValue:&coordsItem];
              coords[i] = coordsItem;
          }
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolygon* ref = (MAPolygon*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolygon@%@::setPolygonWithCoordinates(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref setPolygonWithCoordinates: coords count: count];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleOverlay::particleOverlayWithOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAParticleOverlayOptions* option = (MAParticleOverlayOptions*) HEAP[@([args[@"option"] integerValue])];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleOverlay::particleOverlayWithOption(暂未实现参数打印)");
      
          // 开始调用
          MAParticleOverlay* result = [MAParticleOverlay particleOverlayWithOption: option];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleOverlay::updateOverlayOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAParticleOverlayOptions* overlayOption = (MAParticleOverlayOptions*) HEAP[@([args[@"overlayOption"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlay* ref = (MAParticleOverlay*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleOverlay@%@::updateOverlayOption(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref updateOverlayOption : overlayOption];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAPolyline::polylineWithPointsCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* pointsRefIdArray = (NSArray*) args[@"points"];
          MAMapPoint points[pointsRefIdArray.count];
      
          for (int i = 0; i < pointsRefIdArray.count; i++) {
              NSValue* pointsValue = (NSValue*) HEAP[[pointsRefIdArray objectAtIndex:i]];
              MAMapPoint pointsItem;
              [pointsValue getValue:&pointsItem];
              points[i] = pointsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolyline::polylineWithPoints(暂未实现参数打印)");
      
          // 开始调用
          MAPolyline* result = [MAPolyline polylineWithPoints: points count: count];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAPolyline::polylineWithCoordinatesCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordsRefIdArray = (NSArray*) args[@"coords"];
          CLLocationCoordinate2D coords[coordsRefIdArray.count];
      
          for (int i = 0; i < coordsRefIdArray.count; i++) {
              NSValue* coordsValue = (NSValue*) HEAP[[coordsRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordsItem;
              [coordsValue getValue:&coordsItem];
              coords[i] = coordsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolyline::polylineWithCoordinates(暂未实现参数打印)");
      
          // 开始调用
          MAPolyline* result = [MAPolyline polylineWithCoordinates: coords count: count];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAPolyline::setPolylineWithPointsCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* pointsRefIdArray = (NSArray*) args[@"points"];
          MAMapPoint points[pointsRefIdArray.count];
      
          for (int i = 0; i < pointsRefIdArray.count; i++) {
              NSValue* pointsValue = (NSValue*) HEAP[[pointsRefIdArray objectAtIndex:i]];
              MAMapPoint pointsItem;
              [pointsValue getValue:&pointsItem];
              points[i] = pointsItem;
          }
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolyline* ref = (MAPolyline*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolyline@%@::setPolylineWithPoints(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref setPolylineWithPoints: points count: count];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAPolyline::setPolylineWithCoordinatesCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordsRefIdArray = (NSArray*) args[@"coords"];
          CLLocationCoordinate2D coords[coordsRefIdArray.count];
      
          for (int i = 0; i < coordsRefIdArray.count; i++) {
              NSValue* coordsValue = (NSValue*) HEAP[[coordsRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordsItem;
              [coordsValue getValue:&coordsItem];
              coords[i] = coordsItem;
          }
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolyline* ref = (MAPolyline*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolyline@%@::setPolylineWithCoordinates(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref setPolylineWithCoordinates: coords count: count];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAMultiColoredPolylineRenderer::initWithMultiPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMultiPolyline* multiPolyline = (MAMultiPolyline*) HEAP[@([args[@"multiPolyline"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiColoredPolylineRenderer* ref = (MAMultiColoredPolylineRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMultiColoredPolylineRenderer@%@::initWithMultiPolyline(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAMultiColoredPolylineRenderer* result = [ref initWithMultiPolyline: multiPolyline];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAAnimatedAnnotation::addMoveAnimationWithKeyCoordinatesCountwithDurationwithNamecompleteCallback": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordinatesRefIdArray = (NSArray*) args[@"coordinates"];
          CLLocationCoordinate2D coordinates[coordinatesRefIdArray.count];
      
          for (int i = 0; i < coordinatesRefIdArray.count; i++) {
              NSValue* coordinatesValue = (NSValue*) HEAP[[coordinatesRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordinatesItem;
              [coordinatesValue getValue:&coordinatesItem];
              coordinates[i] = coordinatesItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
          // jsonable参数
          CGFloat duration = [args[@"duration"] floatValue];
          // jsonable参数
          NSString* name = (NSString*) args[@"name"];
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnimatedAnnotation* ref = (MAAnimatedAnnotation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnimatedAnnotation@%@::addMoveAnimationWithKeyCoordinates(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAAnnotationMoveAnimation* result = [ref addMoveAnimationWithKeyCoordinates: coordinates count: count withDuration: duration withName: name completeCallback: nil /* lambda回调暂时不支持 */];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAAnimatedAnnotation::setNeedsStart": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnimatedAnnotation* ref = (MAAnimatedAnnotation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnimatedAnnotation@%@::setNeedsStart(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setNeedsStart ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMultiTexturePolylineRenderer::initWithMultiPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMultiPolyline* multiPolyline = (MAMultiPolyline*) HEAP[@([args[@"multiPolyline"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiTexturePolylineRenderer* ref = (MAMultiTexturePolylineRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMultiTexturePolylineRenderer@%@::initWithMultiPolyline(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAMultiTexturePolylineRenderer* result = [ref initWithMultiPolyline: multiPolyline];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MATileOverlayRenderer::initWithTileOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MATileOverlay* tileOverlay = (MATileOverlay*) HEAP[@([args[@"tileOverlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlayRenderer* ref = (MATileOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MATileOverlayRenderer@%@::initWithTileOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MATileOverlayRenderer* result = [ref initWithTileOverlay: tileOverlay];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MATileOverlayRenderer::reloadData": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlayRenderer* ref = (MATileOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MATileOverlayRenderer@%@::reloadData(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref reloadData ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAGeodesicPolyline::polylineWithPointsCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* pointsRefIdArray = (NSArray*) args[@"points"];
          MAMapPoint points[pointsRefIdArray.count];
      
          for (int i = 0; i < pointsRefIdArray.count; i++) {
              NSValue* pointsValue = (NSValue*) HEAP[[pointsRefIdArray objectAtIndex:i]];
              MAMapPoint pointsItem;
              [pointsValue getValue:&pointsItem];
              points[i] = pointsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAGeodesicPolyline::polylineWithPoints(暂未实现参数打印)");
      
          // 开始调用
          MAGeodesicPolyline* result = [MAGeodesicPolyline polylineWithPoints: points count: count];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAGeodesicPolyline::polylineWithCoordinatesCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordsRefIdArray = (NSArray*) args[@"coords"];
          CLLocationCoordinate2D coords[coordsRefIdArray.count];
      
          for (int i = 0; i < coordsRefIdArray.count; i++) {
              NSValue* coordsValue = (NSValue*) HEAP[[coordsRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordsItem;
              [coordsValue getValue:&coordsItem];
              coords[i] = coordsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAGeodesicPolyline::polylineWithCoordinates(暂未实现参数打印)");
      
          // 开始调用
          MAGeodesicPolyline* result = [MAGeodesicPolyline polylineWithCoordinates: coords count: count];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAGeodesicPolyline::setPolylineWithPointsCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* pointsRefIdArray = (NSArray*) args[@"points"];
          MAMapPoint points[pointsRefIdArray.count];
      
          for (int i = 0; i < pointsRefIdArray.count; i++) {
              NSValue* pointsValue = (NSValue*) HEAP[[pointsRefIdArray objectAtIndex:i]];
              MAMapPoint pointsItem;
              [pointsValue getValue:&pointsItem];
              points[i] = pointsItem;
          }
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAGeodesicPolyline* ref = (MAGeodesicPolyline*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAGeodesicPolyline@%@::setPolylineWithPoints(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref setPolylineWithPoints: points count: count];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAGeodesicPolyline::setPolylineWithCoordinatesCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordsRefIdArray = (NSArray*) args[@"coords"];
          CLLocationCoordinate2D coords[coordsRefIdArray.count];
      
          for (int i = 0; i < coordsRefIdArray.count; i++) {
              NSValue* coordsValue = (NSValue*) HEAP[[coordsRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordsItem;
              [coordsValue getValue:&coordsItem];
              coords[i] = coordsItem;
          }
          // jsonable参数
          NSInteger count = [args[@"count"] integerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAGeodesicPolyline* ref = (MAGeodesicPolyline*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAGeodesicPolyline@%@::setPolylineWithCoordinates(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref setPolylineWithCoordinates: coords count: count];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MATraceDelegate::mapViewRequireLocationAuth": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          CLLocationManager* locationManager = (CLLocationManager*) HEAP[@([args[@"locationManager"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MATraceDelegate> ref = (id<MATraceDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MATraceDelegate@%@::mapViewRequireLocationAuth(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapViewRequireLocationAuth : locationManager];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MATraceManager::sharedInstance": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MATraceManager::sharedInstance(暂未实现参数打印)");
      
          // 开始调用
          MATraceManager* result = [MATraceManager sharedInstance];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MATraceManager::start": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceManager* ref = (MATraceManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MATraceManager@%@::start(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref start ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MATraceManager::stop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceManager* ref = (MATraceManager*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MATraceManager@%@::stop(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref stop ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMultiPointOverlayRendererDelegate::multiPointOverlayRendererDidItemTapped": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMultiPointOverlayRenderer* renderer = (MAMultiPointOverlayRenderer*) HEAP[@([args[@"renderer"] integerValue])];
          // 引用参数
          MAMultiPointItem* item = (MAMultiPointItem*) HEAP[@([args[@"item"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMultiPointOverlayRendererDelegate> ref = (id<MAMultiPointOverlayRendererDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMultiPointOverlayRendererDelegate@%@::multiPointOverlayRenderer(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref multiPointOverlayRenderer : renderer didItemTapped: item];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMultiPointOverlayRenderer::initWithMultiPointOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMultiPointOverlay* multiPointOverlay = (MAMultiPointOverlay*) HEAP[@([args[@"multiPointOverlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointOverlayRenderer* ref = (MAMultiPointOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMultiPointOverlayRenderer@%@::initWithMultiPointOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAMultiPointOverlayRenderer* result = [ref initWithMultiPointOverlay: multiPointOverlay];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAPolylineRenderer::initWithPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAPolyline* polyline = (MAPolyline*) HEAP[@([args[@"polyline"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolylineRenderer* ref = (MAPolylineRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAPolylineRenderer@%@::initWithPolyline(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAPolylineRenderer* result = [ref initWithPolyline: polyline];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAAnnotationMoveAnimation::name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnnotationMoveAnimation* ref = (MAAnnotationMoveAnimation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotationMoveAnimation@%@::name(暂未实现参数打印)", @(refId));
      
          // 开始调用
          NSString* result = [ref name];
      
          // 调用结果
          // 返回值: jsonable
          methodResult(result);
      },
      @"MAAnnotationMoveAnimation::coordinates": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnnotationMoveAnimation* ref = (MAAnnotationMoveAnimation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotationMoveAnimation@%@::coordinates(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CLLocationCoordinate2D* result = [ref coordinates];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D*)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAAnnotationMoveAnimation::count": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnnotationMoveAnimation* ref = (MAAnnotationMoveAnimation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotationMoveAnimation@%@::count(暂未实现参数打印)", @(refId));
      
          // 开始调用
          NSUInteger result = [ref count];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAAnnotationMoveAnimation::duration": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnnotationMoveAnimation* ref = (MAAnnotationMoveAnimation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotationMoveAnimation@%@::duration(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGFloat result = [ref duration];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAAnnotationMoveAnimation::elapsedTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnnotationMoveAnimation* ref = (MAAnnotationMoveAnimation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotationMoveAnimation@%@::elapsedTime(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGFloat result = [ref elapsedTime];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAAnnotationMoveAnimation::cancel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnnotationMoveAnimation* ref = (MAAnnotationMoveAnimation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotationMoveAnimation@%@::cancel(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref cancel ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAAnnotationMoveAnimation::isCancelled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnnotationMoveAnimation* ref = (MAAnnotationMoveAnimation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotationMoveAnimation@%@::isCancelled(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref isCancelled];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAAnnotationMoveAnimation::passedPointCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnnotationMoveAnimation* ref = (MAAnnotationMoveAnimation*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAAnnotationMoveAnimation@%@::passedPointCount(暂未实现参数打印)", @(refId));
      
          // 开始调用
          NSInteger result = [ref passedPointCount];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MATileOverlay::cancelLoadOfTileAtPath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* pathValue = (NSValue*) HEAP[@([args[@"path"] integerValue])];
          MATileOverlayPath path;
          [pathValue getValue:&path];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MATileOverlay@%@::cancelLoadOfTileAtPath(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref cancelLoadOfTileAtPath : path];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAOfflineMap::sharedOfflineMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOfflineMap::sharedOfflineMap(暂未实现参数打印)");
      
          // 开始调用
          MAOfflineMap* result = [MAOfflineMap sharedOfflineMap];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAOfflineMap::setupWithCompletionBlock": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOfflineMap@%@::setupWithCompletionBlock(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setupWithCompletionBlock : nil /* lambda回调暂时不支持 */];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAOfflineMap::isDownloadingForItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAOfflineItem* item = (MAOfflineItem*) HEAP[@([args[@"item"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOfflineMap@%@::isDownloadingForItem(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref isDownloadingForItem: item];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAOfflineMap::pauseItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAOfflineItem* item = (MAOfflineItem*) HEAP[@([args[@"item"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOfflineMap@%@::pauseItem(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref pauseItem: item];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAOfflineMap::deleteItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAOfflineItem* item = (MAOfflineItem*) HEAP[@([args[@"item"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOfflineMap@%@::deleteItem(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref deleteItem : item];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAOfflineMap::cancelAll": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOfflineMap@%@::cancelAll(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref cancelAll ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAOfflineMap::clearDisk": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOfflineMap@%@::clearDisk(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref clearDisk ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MACircleRenderer::initWithCircle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MACircle* circle = (MACircle*) HEAP[@([args[@"circle"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MACircleRenderer* ref = (MACircleRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MACircleRenderer@%@::initWithCircle(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MACircleRenderer* result = [ref initWithCircle: circle];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleOverlayRenderer::initWithParticleOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAParticleOverlay* particleOverlay = (MAParticleOverlay*) HEAP[@([args[@"particleOverlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayRenderer* ref = (MAParticleOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleOverlayRenderer@%@::initWithParticleOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAParticleOverlayRenderer* result = [ref initWithParticleOverlay: particleOverlay];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleVelocityGenerate::getX": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAParticleVelocityGenerate> ref = (id<MAParticleVelocityGenerate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleVelocityGenerate@%@::getX(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGFloat result = [ref getX];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleVelocityGenerate::getY": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAParticleVelocityGenerate> ref = (id<MAParticleVelocityGenerate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleVelocityGenerate@%@::getY(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGFloat result = [ref getY];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleVelocityGenerate::getZ": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAParticleVelocityGenerate> ref = (id<MAParticleVelocityGenerate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleVelocityGenerate@%@::getZ(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGFloat result = [ref getZ];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleRandomVelocityGenerate::initWithBoundaryValueX1Y1Z1X2Y2Z2": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float x1 = [args[@"x1"] floatValue];
          // jsonable参数
          float y1 = [args[@"y1"] floatValue];
          // jsonable参数
          float z1 = [args[@"z1"] floatValue];
          // jsonable参数
          float x2 = [args[@"x2"] floatValue];
          // jsonable参数
          float y2 = [args[@"y2"] floatValue];
          // jsonable参数
          float z2 = [args[@"z2"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleRandomVelocityGenerate* ref = (MAParticleRandomVelocityGenerate*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleRandomVelocityGenerate@%@::initWithBoundaryValueX1(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAParticleRandomVelocityGenerate* result = [ref initWithBoundaryValueX1: x1 Y1: y1 Z1: z1 X2: x2 Y2: y2 Z2: z2];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleRandomColorGenerate::initWithBoundaryColorR1G1B1A1R2G2B2A2": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float r1 = [args[@"r1"] floatValue];
          // jsonable参数
          float g1 = [args[@"g1"] floatValue];
          // jsonable参数
          float b1 = [args[@"b1"] floatValue];
          // jsonable参数
          float a1 = [args[@"a1"] floatValue];
          // jsonable参数
          float r2 = [args[@"r2"] floatValue];
          // jsonable参数
          float g2 = [args[@"g2"] floatValue];
          // jsonable参数
          float b2 = [args[@"b2"] floatValue];
          // jsonable参数
          float a2 = [args[@"a2"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleRandomColorGenerate* ref = (MAParticleRandomColorGenerate*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleRandomColorGenerate@%@::initWithBoundaryColorR1(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAParticleRandomColorGenerate* result = [ref initWithBoundaryColorR1: r1 G1: g1 B1: b1 A1: a1 R2: r2 G2: g2 B2: b2 A2: a2];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleRotationGenerate::getRotate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAParticleRotationGenerate> ref = (id<MAParticleRotationGenerate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleRotationGenerate@%@::getRotate(暂未实现参数打印)", @(refId));
      
          // 开始调用
          float result = [ref getRotate];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleConstantRotationGenerate::initWithRotate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float rotate = [args[@"rotate"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleConstantRotationGenerate* ref = (MAParticleConstantRotationGenerate*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleConstantRotationGenerate@%@::initWithRotate(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAParticleConstantRotationGenerate* result = [ref initWithRotate: rotate];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleSizeGenerate::getSizeX": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float timeFrame = [args[@"timeFrame"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAParticleSizeGenerate> ref = (id<MAParticleSizeGenerate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleSizeGenerate@%@::getSizeX(暂未实现参数打印)", @(refId));
      
          // 开始调用
          float result = [ref getSizeX: timeFrame];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleSizeGenerate::getSizeY": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float timeFrame = [args[@"timeFrame"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAParticleSizeGenerate> ref = (id<MAParticleSizeGenerate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleSizeGenerate@%@::getSizeY(暂未实现参数打印)", @(refId));
      
          // 开始调用
          float result = [ref getSizeY: timeFrame];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleSizeGenerate::getSizeZ": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float timeFrame = [args[@"timeFrame"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAParticleSizeGenerate> ref = (id<MAParticleSizeGenerate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleSizeGenerate@%@::getSizeZ(暂未实现参数打印)", @(refId));
      
          // 开始调用
          float result = [ref getSizeZ: timeFrame];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleCurveSizeGenerate::initWithCurveXYZ": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float x = [args[@"x"] floatValue];
          // jsonable参数
          float y = [args[@"y"] floatValue];
          // jsonable参数
          float z = [args[@"z"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleCurveSizeGenerate* ref = (MAParticleCurveSizeGenerate*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleCurveSizeGenerate@%@::initWithCurveX(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAParticleCurveSizeGenerate* result = [ref initWithCurveX: x Y: y Z: z];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleEmissionModule::initWithEmissionRateRateTime": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          int rate = [args[@"rate"] intValue];
          // jsonable参数
          int rateTime = [args[@"rateTime"] intValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleEmissionModule* ref = (MAParticleEmissionModule*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleEmissionModule@%@::initWithEmissionRate(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAParticleEmissionModule* result = [ref initWithEmissionRate: rate rateTime: rateTime];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleShapeModule::isRatioEnable": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAParticleShapeModule> ref = (id<MAParticleShapeModule>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleShapeModule@%@::isRatioEnable(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref isRatioEnable];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAParticleSinglePointShapeModule::initWithShapeXYZuseRatio": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float x = [args[@"x"] floatValue];
          // jsonable参数
          float y = [args[@"y"] floatValue];
          // jsonable参数
          float z = [args[@"z"] floatValue];
          // jsonable参数
          BOOL isUseRatio = [args[@"isUseRatio"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleSinglePointShapeModule* ref = (MAParticleSinglePointShapeModule*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleSinglePointShapeModule@%@::initWithShapeX(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAParticleSinglePointShapeModule* result = [ref initWithShapeX: x Y: y Z: z useRatio: isUseRatio];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleRectShapeModule::initWithLeftToprightbottomuseRatio": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          float left = [args[@"left"] floatValue];
          // jsonable参数
          float top = [args[@"top"] floatValue];
          // jsonable参数
          float right = [args[@"right"] floatValue];
          // jsonable参数
          float bottom = [args[@"bottom"] floatValue];
          // jsonable参数
          BOOL isUseRatio = [args[@"isUseRatio"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleRectShapeModule* ref = (MAParticleRectShapeModule*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleRectShapeModule@%@::initWithLeft(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAParticleRectShapeModule* result = [ref initWithLeft: left top: top right: right bottom: bottom useRatio: isUseRatio];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAParticleOverLifeModule::setVelocityOverLife": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAParticleVelocityGenerate> velocity = (id<MAParticleVelocityGenerate>) HEAP[@([args[@"velocity"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverLifeModule* ref = (MAParticleOverLifeModule*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleOverLifeModule@%@::setVelocityOverLife(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setVelocityOverLife : velocity];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAParticleOverLifeModule::setRotationOverLife": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAParticleRotationGenerate> rotation = (id<MAParticleRotationGenerate>) HEAP[@([args[@"rotation"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverLifeModule* ref = (MAParticleOverLifeModule*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleOverLifeModule@%@::setRotationOverLife(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setRotationOverLife : rotation];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAParticleOverLifeModule::setSizeOverLife": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAParticleSizeGenerate> size = (id<MAParticleSizeGenerate>) HEAP[@([args[@"size"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverLifeModule* ref = (MAParticleOverLifeModule*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleOverLifeModule@%@::setSizeOverLife(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setSizeOverLife : size];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAParticleOverLifeModule::setColorOverLife": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAParticleColorGenerate> color = (id<MAParticleColorGenerate>) HEAP[@([args[@"color"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverLifeModule* ref = (MAParticleOverLifeModule*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAParticleOverLifeModule@%@::setColorOverLife(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setColorOverLife : color];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAOverlayRenderer::initWithOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          id<MAOverlay> overlay = (id<MAOverlay>) HEAP[@([args[@"overlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOverlayRenderer@%@::initWithOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAOverlayRenderer* result = [ref initWithOverlay: overlay];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAOverlayRenderer::getOffsetPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOverlayRenderer@%@::getOffsetPoint(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAMapPoint result = [ref getOffsetPoint];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAOverlayRenderer::getMapZoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOverlayRenderer@%@::getMapZoomLevel(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGFloat result = [ref getMapZoomLevel];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAOverlayRenderer::glPointForMapPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* mapPointValue = (NSValue*) HEAP[@([args[@"mapPoint"] integerValue])];
          MAMapPoint mapPoint;
          [mapPointValue getValue:&mapPoint];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOverlayRenderer@%@::glPointForMapPoint(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGPoint result = [ref glPointForMapPoint: mapPoint];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAOverlayRenderer::glPointsForMapPointsCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* mapPointsRefIdArray = (NSArray*) args[@"mapPoints"];
          MAMapPoint mapPoints[mapPointsRefIdArray.count];
      
          for (int i = 0; i < mapPointsRefIdArray.count; i++) {
              NSValue* mapPointsValue = (NSValue*) HEAP[[mapPointsRefIdArray objectAtIndex:i]];
              MAMapPoint mapPointsItem;
              [mapPointsValue getValue:&mapPointsItem];
              mapPoints[i] = mapPointsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOverlayRenderer@%@::glPointsForMapPoints(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGPoint* result = [ref glPointsForMapPoints: mapPoints count: count];
      
          // 调用结果
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint*)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      @"MAOverlayRenderer::glWidthForWindowWidth": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // jsonable参数
          CGFloat windowWidth = [args[@"windowWidth"] floatValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOverlayRenderer@%@::glWidthForWindowWidth(暂未实现参数打印)", @(refId));
      
          // 开始调用
          CGFloat result = [ref glWidthForWindowWidth: windowWidth];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MAOverlayRenderer::glRender": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOverlayRenderer@%@::glRender(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref glRender ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAOverlayRenderer::setNeedsUpdate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
      
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAOverlayRenderer@%@::setNeedsUpdate(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref setNeedsUpdate ];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMultiPointOverlay::initWithMultiPointItems": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray<NSNumber*>* itemsRefArray = (NSArray<NSNumber*> *) args[@"items"];
          NSMutableArray<MAMultiPointItem*>* items = [NSMutableArray arrayWithCapacity:itemsRefArray.count];
          for (int i = 0; i < items.count; i++) {
              MAMultiPointItem* item = (MAMultiPointItem*) HEAP[[itemsRefArray objectAtIndex:i]];
              [items addObject:item];
          }
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointOverlay* ref = (MAMultiPointOverlay*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMultiPointOverlay@%@::initWithMultiPointItems(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAMultiPointOverlay* result = [ref initWithMultiPointItems: items];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MACustomBuildingOverlayOption::optionWithCoordinatesCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordsRefIdArray = (NSArray*) args[@"coords"];
          CLLocationCoordinate2D coords[coordsRefIdArray.count];
      
          for (int i = 0; i < coordsRefIdArray.count; i++) {
              NSValue* coordsValue = (NSValue*) HEAP[[coordsRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordsItem;
              [coordsValue getValue:&coordsItem];
              coords[i] = coordsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MACustomBuildingOverlayOption::optionWithCoordinates(暂未实现参数打印)");
      
          // 开始调用
          MACustomBuildingOverlayOption* result = [MACustomBuildingOverlayOption optionWithCoordinates: coords count: count];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MACustomBuildingOverlayOption::setOptionWithCoordinatesCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 列表参数
          NSArray* coordsRefIdArray = (NSArray*) args[@"coords"];
          CLLocationCoordinate2D coords[coordsRefIdArray.count];
      
          for (int i = 0; i < coordsRefIdArray.count; i++) {
              NSValue* coordsValue = (NSValue*) HEAP[[coordsRefIdArray objectAtIndex:i]];
              CLLocationCoordinate2D coordsItem;
              [coordsValue getValue:&coordsItem];
              coords[i] = coordsItem;
          }
          // jsonable参数
          NSUInteger count = [args[@"count"] unsignedIntegerValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayOption* ref = (MACustomBuildingOverlayOption*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MACustomBuildingOverlayOption@%@::setOptionWithCoordinates(暂未实现参数打印)", @(refId));
      
          // 开始调用
          BOOL result = [ref setOptionWithCoordinates: coords count: count];
      
          // 调用结果
          // 返回值: Value
          methodResult(@(result));
      },
      @"MACustomBuildingOverlay::addCustomOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MACustomBuildingOverlayOption* option = (MACustomBuildingOverlayOption*) HEAP[@([args[@"option"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlay* ref = (MACustomBuildingOverlay*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MACustomBuildingOverlay@%@::addCustomOption(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref addCustomOption : option];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MACustomBuildingOverlay::removeCustomOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MACustomBuildingOverlayOption* option = (MACustomBuildingOverlayOption*) HEAP[@([args[@"option"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlay* ref = (MACustomBuildingOverlay*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MACustomBuildingOverlay@%@::removeCustomOption(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref removeCustomOption : option];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAArc::arcWithStartCoordinatePassedCoordinateendCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 结构体参数
          NSValue* startCoordinateValue = (NSValue*) HEAP[@([args[@"startCoordinate"] integerValue])];
          CLLocationCoordinate2D startCoordinate;
          [startCoordinateValue getValue:&startCoordinate];
          // 结构体参数
          NSValue* passedCoordinateValue = (NSValue*) HEAP[@([args[@"passedCoordinate"] integerValue])];
          CLLocationCoordinate2D passedCoordinate;
          [passedCoordinateValue getValue:&passedCoordinate];
          // 结构体参数
          NSValue* endCoordinateValue = (NSValue*) HEAP[@([args[@"endCoordinate"] integerValue])];
          CLLocationCoordinate2D endCoordinate;
          [endCoordinateValue getValue:&endCoordinate];
      
          // 调用对象引用
      
      
          // 日志打印
          NSLog(@"fluttify-objc: MAArc::arcWithStartCoordinate(暂未实现参数打印)");
      
          // 开始调用
          MAArc* result = [MAArc arcWithStartCoordinate: startCoordinate passedCoordinate: passedCoordinate endCoordinate: endCoordinate];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MAMapViewDelegate::mapViewRegionChanged": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapViewRegionChanged(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapViewRegionChanged : mapView];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::mapViewRegionWillChangeAnimated": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
          // jsonable参数
          BOOL animated = [args[@"animated"] boolValue];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapView(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapView : mapView regionWillChangeAnimated: animated];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::mapViewWillStartLoadingMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapViewWillStartLoadingMap(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapViewWillStartLoadingMap : mapView];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::mapViewDidFinishLoadingMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapViewDidFinishLoadingMap(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapViewDidFinishLoadingMap : mapView];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::mapViewDidFailLoadingMapWithError": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
          // 引用参数
          NSError* error = (NSError*) HEAP[@([args[@"error"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapViewDidFailLoadingMap(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapViewDidFailLoadingMap : mapView withError: error];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::mapViewWillStartLocatingUser": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapViewWillStartLocatingUser(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapViewWillStartLocatingUser : mapView];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::mapViewDidStopLocatingUser": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapViewDidStopLocatingUser(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapViewDidStopLocatingUser : mapView];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::mapViewRequireLocationAuth": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          CLLocationManager* locationManager = (CLLocationManager*) HEAP[@([args[@"locationManager"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapViewRequireLocationAuth(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapViewRequireLocationAuth : locationManager];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::mapInitComplete": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::mapInitComplete(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref mapInitComplete : mapView];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::offlineDataWillReload": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::offlineDataWillReload(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref offlineDataWillReload : mapView];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAMapViewDelegate::offlineDataDidReload": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAMapView* mapView = (MAMapView*) HEAP[@([args[@"mapView"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAMapViewDelegate> ref = (id<MAMapViewDelegate>) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAMapViewDelegate@%@::offlineDataDidReload(暂未实现参数打印)", @(refId));
      
          // 开始调用
          [ref offlineDataDidReload : mapView];
      
          // 调用结果
          // 无返回值
          methodResult(@"success");
      },
      @"MAGroundOverlayRenderer::initWithGroundOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MAGroundOverlay* groundOverlay = (MAGroundOverlay*) HEAP[@([args[@"groundOverlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MAGroundOverlayRenderer* ref = (MAGroundOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MAGroundOverlayRenderer@%@::initWithGroundOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MAGroundOverlayRenderer* result = [ref initWithGroundOverlay: groundOverlay];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"MACustomBuildingOverlayRenderer::initWithCustomBuildingOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 参数
          // 引用参数
          MACustomBuildingOverlay* customBuildingOverlay = (MACustomBuildingOverlay*) HEAP[@([args[@"customBuildingOverlay"] integerValue])];
      
          // 调用对象引用
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayRenderer* ref = (MACustomBuildingOverlayRenderer*) HEAP[@(refId)];
      
          // 日志打印
          NSLog(@"fluttify-objc: MACustomBuildingOverlayRenderer@%@::initWithCustomBuildingOverlay(暂未实现参数打印)", @(refId));
      
          // 开始调用
          MACustomBuildingOverlayRenderer* result = [ref initWithCustomBuildingOverlay: customBuildingOverlay];
      
          // 调用结果
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      @"AMapNaviConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNaviConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapNaviConfig::get_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_destination");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.destination;
      
          NSLog(@"AMapNaviConfig::get_destination:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapNaviConfig::get_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::get_strategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          // 开始调用
          AMapDrivingStrategy result = ref.strategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRouteConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapRouteConfig::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.startCoordinate;
      
          NSLog(@"AMapRouteConfig::get_startCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapRouteConfig::get_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_destinationCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.destinationCoordinate;
      
          NSLog(@"AMapRouteConfig::get_destinationCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapRouteConfig::get_drivingStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_drivingStrategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          AMapDrivingStrategy result = ref.drivingStrategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_transitStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_transitStrategy");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          AMapTransitStrategy result = ref.transitStrategy;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapRouteConfig::get_routeType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::get_routeType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          // 开始调用
          AMapRouteSearchType result = ref.routeType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapPOIConfig::get_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_appScheme");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appScheme;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_appName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.appName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_keywords");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.keywords;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapPOIConfig::get_leftTopCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_leftTopCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.leftTopCoordinate;
      
          NSLog(@"AMapPOIConfig::get_leftTopCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapPOIConfig::get_rightBottomCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::get_rightBottomCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.rightBottomCoordinate;
      
          NSLog(@"AMapPOIConfig::get_rightBottomCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"AMapServices::get_apiKey": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_apiKey");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.apiKey;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"AMapServices::get_enableHTTPS": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_enableHTTPS");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.enableHTTPS;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapServices::get_crashReportEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_crashReportEnabled");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.crashReportEnabled;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"AMapServices::get_identifier": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::get_identifier");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.identifier;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAOfflineCity::get_cityCode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineCity::get_cityCode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineCity* ref = (MAOfflineCity*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.cityCode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAOfflineCity::get_cityName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineCity::get_cityName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineCity* ref = (MAOfflineCity*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.cityName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAOfflineCity::get_urlString": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineCity::get_urlString");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineCity* ref = (MAOfflineCity*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.urlString;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAOfflineCity::get_status": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineCity::get_status");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineCity* ref = (MAOfflineCity*) HEAP[@(refId)];
      
          // 开始调用
          MAOfflineCityStatus result = ref.status;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMultiPoint::get_points": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPoint::get_points");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPoint* ref = (MAMultiPoint*) HEAP[@(refId)];
      
          // 开始调用
          MAMapPoint* result = ref.points;
      
          NSLog(@"MAMultiPoint::get_points:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMultiPoint::get_pointCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPoint::get_pointCount");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPoint* ref = (MAMultiPoint*) HEAP[@(refId)];
      
          // 开始调用
          NSUInteger result = ref.pointCount;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMultiPoint::get_cross180Longitude": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPoint::get_cross180Longitude");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPoint* ref = (MAMultiPoint*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.cross180Longitude;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAGroundOverlay::get_alpha": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAGroundOverlay::get_alpha");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAGroundOverlay* ref = (MAGroundOverlay*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.alpha;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAGroundOverlay::get_zoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAGroundOverlay::get_zoomLevel");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAGroundOverlay* ref = (MAGroundOverlay*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.zoomLevel;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAGroundOverlay::get_bounds": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAGroundOverlay::get_bounds");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAGroundOverlay* ref = (MAGroundOverlay*) HEAP[@(refId)];
      
          // 开始调用
          MACoordinateBounds result = ref.bounds;
      
          NSLog(@"MAGroundOverlay::get_bounds:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MACoordinateBounds)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAPolygonRenderer::get_polygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPolygonRenderer::get_polygon");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolygonRenderer* ref = (MAPolygonRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MAPolygon* result = ref.polygon;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAPinAnnotationView::get_pinColor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPinAnnotationView::get_pinColor");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAPinAnnotationView* ref = (MAPinAnnotationView*) HEAP[@(refId)];
      
          // 开始调用
          MAPinAnnotationColor result = ref.pinColor;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAPinAnnotationView::get_animatesDrop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPinAnnotationView::get_animatesDrop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAPinAnnotationView* ref = (MAPinAnnotationView*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.animatesDrop;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAHeatMapNode::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapNode::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapNode* ref = (MAHeatMapNode*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.coordinate;
      
          NSLog(@"MAHeatMapNode::get_coordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAHeatMapNode::get_intensity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapNode::get_intensity");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapNode* ref = (MAHeatMapNode*) HEAP[@(refId)];
      
          // 开始调用
          float result = ref.intensity;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAHeatMapTileOverlay::get_data": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::get_data");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          NSArray<MAHeatMapNode*>* result = ref.data;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"MAHeatMapTileOverlay::get_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::get_radius");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.radius;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAHeatMapTileOverlay::get_opacity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::get_opacity");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.opacity;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAHeatMapTileOverlay::get_gradient": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::get_gradient");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          MAHeatMapGradient* result = ref.gradient;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAHeatMapTileOverlay::get_allowRetinaAdapting": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::get_allowRetinaAdapting");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.allowRetinaAdapting;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapStatus::get_centerCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::get_centerCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.centerCoordinate;
      
          NSLog(@"MAMapStatus::get_centerCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMapStatus::get_zoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::get_zoomLevel");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.zoomLevel;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapStatus::get_rotationDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::get_rotationDegree");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.rotationDegree;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapStatus::get_cameraDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::get_cameraDegree");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.cameraDegree;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMapStatus::get_screenAnchor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::get_screenAnchor");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          // 开始调用
          CGPoint result = ref.screenAnchor;
      
          NSLog(@"MAMapStatus::get_screenAnchor:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAPointAnnotation::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPointAnnotation::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAPointAnnotation* ref = (MAPointAnnotation*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.coordinate;
      
          NSLog(@"MAPointAnnotation::get_coordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAPointAnnotation::get_isLockedToScreen": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPointAnnotation::get_isLockedToScreen");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAPointAnnotation* ref = (MAPointAnnotation*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.lockedToScreen;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAPointAnnotation::get_lockedScreenPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPointAnnotation::get_lockedScreenPoint");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAPointAnnotation* ref = (MAPointAnnotation*) HEAP[@(refId)];
      
          // 开始调用
          CGPoint result = ref.lockedScreenPoint;
      
          NSLog(@"MAPointAnnotation::get_lockedScreenPoint:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MACircle::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACircle::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACircle* ref = (MACircle*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.coordinate;
      
          NSLog(@"MACircle::get_coordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MACircle::get_boundingMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACircle::get_boundingMapRect");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACircle* ref = (MACircle*) HEAP[@(refId)];
      
          // 开始调用
          MAMapRect result = ref.boundingMapRect;
      
          NSLog(@"MACircle::get_boundingMapRect:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAArcRenderer::get_arc": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAArcRenderer::get_arc");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAArcRenderer* ref = (MAArcRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MAArc* result = ref.arc;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAAnnotation::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAAnnotation::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnnotation> ref = (id<MAAnnotation>) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.coordinate;
      
          NSLog(@"MAAnnotation::get_coordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAAnnotation::get_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAAnnotation::get_title");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnnotation> ref = (id<MAAnnotation>) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.title;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAAnnotation::get_subtitle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAAnnotation::get_subtitle");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnnotation> ref = (id<MAAnnotation>) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.subtitle;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAMapCustomStyleOptions::get_styleId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapCustomStyleOptions::get_styleId");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapCustomStyleOptions* ref = (MAMapCustomStyleOptions*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.styleId;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAParticleOverlay::get_overlayOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlay::get_overlayOption");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlay* ref = (MAParticleOverlay*) HEAP[@(refId)];
      
          // 开始调用
          MAParticleOverlayOptions* result = ref.overlayOption;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAMultiColoredPolylineRenderer::get_multiPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiColoredPolylineRenderer::get_multiPolyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiColoredPolylineRenderer* ref = (MAMultiColoredPolylineRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MAMultiPolyline* result = ref.multiPolyline;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAMultiColoredPolylineRenderer::get_isGradient": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiColoredPolylineRenderer::get_isGradient");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiColoredPolylineRenderer* ref = (MAMultiColoredPolylineRenderer*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.gradient;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAAnimatedAnnotation::get_movingDirection": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAAnimatedAnnotation::get_movingDirection");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnimatedAnnotation* ref = (MAAnimatedAnnotation*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationDirection result = ref.movingDirection;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlay::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlay::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAOverlay> ref = (id<MAOverlay>) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.coordinate;
      
          NSLog(@"MAOverlay::get_coordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAOverlay::get_boundingMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlay::get_boundingMapRect");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAOverlay> ref = (id<MAOverlay>) HEAP[@(refId)];
      
          // 开始调用
          MAMapRect result = ref.boundingMapRect;
      
          NSLog(@"MAOverlay::get_boundingMapRect:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMultiTexturePolylineRenderer::get_multiPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiTexturePolylineRenderer::get_multiPolyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiTexturePolylineRenderer* ref = (MAMultiTexturePolylineRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MAMultiPolyline* result = ref.multiPolyline;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MATileOverlayRenderer::get_tileOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlayRenderer::get_tileOverlay");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlayRenderer* ref = (MATileOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MATileOverlay* result = ref.tileOverlay;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAOfflineItem::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineItem::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineItem* ref = (MAOfflineItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAOfflineItem::get_jianpin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineItem::get_jianpin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineItem* ref = (MAOfflineItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.jianpin;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAOfflineItem::get_pinyin": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineItem::get_pinyin");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineItem* ref = (MAOfflineItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.pinyin;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAOfflineItem::get_adcode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineItem::get_adcode");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineItem* ref = (MAOfflineItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.adcode;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAOfflineItem::get_itemStatus": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineItem::get_itemStatus");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineItem* ref = (MAOfflineItem*) HEAP[@(refId)];
      
          // 开始调用
          MAOfflineItemStatus result = ref.itemStatus;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MATouchPoi::get_name": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATouchPoi::get_name");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATouchPoi* ref = (MATouchPoi*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.name;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MATouchPoi::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATouchPoi::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATouchPoi* ref = (MATouchPoi*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.coordinate;
      
          NSLog(@"MATouchPoi::get_coordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MATouchPoi::get_uid": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATouchPoi::get_uid");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATouchPoi* ref = (MATouchPoi*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.uid;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAMultiPointOverlayRenderer::get_anchor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointOverlayRenderer::get_anchor");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointOverlayRenderer* ref = (MAMultiPointOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          CGPoint result = ref.anchor;
      
          NSLog(@"MAMultiPointOverlayRenderer::get_anchor:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMultiPointOverlayRenderer::get_multiPointOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointOverlayRenderer::get_multiPointOverlay");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointOverlayRenderer* ref = (MAMultiPointOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MAMultiPointOverlay* result = ref.multiPointOverlay;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAIndoorFloorInfo::get_floorName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorFloorInfo::get_floorName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorFloorInfo* ref = (MAIndoorFloorInfo*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.floorName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAIndoorFloorInfo::get_floorIndex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorFloorInfo::get_floorIndex");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorFloorInfo* ref = (MAIndoorFloorInfo*) HEAP[@(refId)];
      
          // 开始调用
          int result = ref.floorIndex;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAIndoorFloorInfo::get_floorNona": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorFloorInfo::get_floorNona");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorFloorInfo* ref = (MAIndoorFloorInfo*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.floorNona;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAIndoorFloorInfo::get_isPark": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorFloorInfo::get_isPark");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorFloorInfo* ref = (MAIndoorFloorInfo*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.isPark;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAIndoorInfo::get_cnName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorInfo::get_cnName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorInfo* ref = (MAIndoorInfo*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.cnName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAIndoorInfo::get_enName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorInfo::get_enName");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorInfo* ref = (MAIndoorInfo*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.enName;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAIndoorInfo::get_poiID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorInfo::get_poiID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorInfo* ref = (MAIndoorInfo*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.poiID;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAIndoorInfo::get_buildingType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorInfo::get_buildingType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorInfo* ref = (MAIndoorInfo*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.buildingType;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAIndoorInfo::get_activeFloorIndex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorInfo::get_activeFloorIndex");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorInfo* ref = (MAIndoorInfo*) HEAP[@(refId)];
      
          // 开始调用
          int result = ref.activeFloorIndex;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAIndoorInfo::get_activeFloorInfoIndex": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorInfo::get_activeFloorInfoIndex");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorInfo* ref = (MAIndoorInfo*) HEAP[@(refId)];
      
          // 开始调用
          int result = ref.activeFloorInfoIndex;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAIndoorInfo::get_numberOfFloor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorInfo::get_numberOfFloor");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorInfo* ref = (MAIndoorInfo*) HEAP[@(refId)];
      
          // 开始调用
          int result = ref.numberOfFloor;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAIndoorInfo::get_numberOfParkFloor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAIndoorInfo::get_numberOfParkFloor");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAIndoorInfo* ref = (MAIndoorInfo*) HEAP[@(refId)];
      
          // 开始调用
          int result = ref.numberOfParkFloor;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAPolylineRenderer::get_polyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPolylineRenderer::get_polyline");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolylineRenderer* ref = (MAPolylineRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MAPolyline* result = ref.polyline;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAPolylineRenderer::get_is3DArrowLine": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPolylineRenderer::get_is3DArrowLine");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolylineRenderer* ref = (MAPolylineRenderer*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.is3DArrowLine;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAShape::get_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAShape::get_title");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAShape* ref = (MAShape*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.title;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAShape::get_subtitle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAShape::get_subtitle");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAShape* ref = (MAShape*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.subtitle;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MATileOverlay::get_minimumZ": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::get_minimumZ");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.minimumZ;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MATileOverlay::get_maximumZ": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::get_maximumZ");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.maximumZ;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MATileOverlay::get_URLTemplate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::get_URLTemplate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.URLTemplate;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MATileOverlay::get_canReplaceMapContent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::get_canReplaceMapContent");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.canReplaceMapContent;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MATileOverlay::get_boundingMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::get_boundingMapRect");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          MAMapRect result = ref.boundingMapRect;
      
          NSLog(@"MATileOverlay::get_boundingMapRect:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MATileOverlay::get_disableOffScreenTileLoading": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::get_disableOffScreenTileLoading");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.disableOffScreenTileLoading;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOfflineItemCommonCity::get_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineItemCommonCity::get_province");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineItemCommonCity* ref = (MAOfflineItemCommonCity*) HEAP[@(refId)];
      
          // 开始调用
          MAOfflineItem* result = ref.province;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAOfflineMap::get_provinces": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineMap::get_provinces");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 开始调用
          NSArray<MAOfflineProvince*>* result = ref.provinces;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"MAOfflineMap::get_municipalities": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineMap::get_municipalities");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 开始调用
          NSArray<MAOfflineItemMunicipality*>* result = ref.municipalities;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"MAOfflineMap::get_nationWide": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineMap::get_nationWide");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 开始调用
          MAOfflineItemNationWide* result = ref.nationWide;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAOfflineMap::get_cities": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineMap::get_cities");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 开始调用
          NSArray<MAOfflineCity*>* result = ref.cities;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"MAOfflineMap::get_version": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineMap::get_version");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineMap* ref = (MAOfflineMap*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.version;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MACircleRenderer::get_circle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACircleRenderer::get_circle");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACircleRenderer* ref = (MACircleRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MACircle* result = ref.circle;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAParticleOverlayRenderer::get_particleOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayRenderer::get_particleOverlay");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayRenderer* ref = (MAParticleOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MAParticleOverlay* result = ref.particleOverlay;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAParticleOverlayOptions::get_visibile": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::get_visibile");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.visibile;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAParticleOverlayOptions::get_loop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::get_loop");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.loop;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAParticleOverlayOptions::get_maxParticles": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::get_maxParticles");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          // 开始调用
          NSInteger result = ref.maxParticles;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAParticleOverlayOptions::get_particleEmissionModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::get_particleEmissionModule");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          // 开始调用
          MAParticleEmissionModule* result = ref.particleEmissionModule;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAParticleOverlayOptions::get_particleOverLifeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::get_particleOverLifeModule");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          // 开始调用
          MAParticleOverLifeModule* result = ref.particleOverLifeModule;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MAOverlayRenderer::get_glPoints": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayRenderer::get_glPoints");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          CGPoint* result = ref.glPoints;
      
          NSLog(@"MAOverlayRenderer::get_glPoints:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CGPoint)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAOverlayRenderer::get_glPointCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayRenderer::get_glPointCount");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          NSUInteger result = ref.glPointCount;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlayRenderer::get_alpha": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayRenderer::get_alpha");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.alpha;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlayRenderer::get_contentScale": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayRenderer::get_contentScale");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.contentScale;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAUserLocation::get_isUpdating": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocation::get_isUpdating");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocation* ref = (MAUserLocation*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.updating;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAMultiPointItem::get_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointItem::get_coordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointItem* ref = (MAMultiPointItem*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.coordinate;
      
          NSLog(@"MAMultiPointItem::get_coordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAMultiPointItem::get_customID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointItem::get_customID");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointItem* ref = (MAMultiPointItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.customID;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAMultiPointItem::get_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointItem::get_title");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointItem* ref = (MAMultiPointItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.title;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAMultiPointItem::get_subtitle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointItem::get_subtitle");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointItem* ref = (MAMultiPointItem*) HEAP[@(refId)];
      
          // 开始调用
          NSString* result = ref.subtitle;
      
      
      
          // 返回值: jsonable
          methodResult(result);
      },
      
      @"MAMultiPointOverlay::get_items": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointOverlay::get_items");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointOverlay* ref = (MAMultiPointOverlay*) HEAP[@(refId)];
      
          // 开始调用
          NSArray<MAMultiPointItem*>* result = ref.items;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"MACustomBuildingOverlayOption::get_height": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlayOption::get_height");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayOption* ref = (MACustomBuildingOverlayOption*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.height;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MACustomBuildingOverlayOption::get_heightScale": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlayOption::get_heightScale");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayOption* ref = (MACustomBuildingOverlayOption*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.heightScale;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MACustomBuildingOverlayOption::get_visibile": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlayOption::get_visibile");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayOption* ref = (MACustomBuildingOverlayOption*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.visibile;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MACustomBuildingOverlay::get_defaultOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlay::get_defaultOption");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlay* ref = (MACustomBuildingOverlay*) HEAP[@(refId)];
      
          // 开始调用
          MACustomBuildingOverlayOption* result = ref.defaultOption;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MACustomBuildingOverlay::get_customOptions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlay::get_customOptions");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlay* ref = (MACustomBuildingOverlay*) HEAP[@(refId)];
      
          // 开始调用
          NSArray<MACustomBuildingOverlayOption*>* result = ref.customOptions;
      
      
      
          // 返回值: 列表
          NSMutableArray* refIdList = [NSMutableArray array];
          for (int i = 0; i < result.count; i++) {
              NSObject* object = [result objectAtIndex:i];
              [refIdList addObject: @(object.hash)];
              HEAP[@([object hash])] = object;
          }
      
          methodResult(refIdList);
      },
      
      @"MATraceLocation::get_loc": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceLocation::get_loc");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceLocation* ref = (MATraceLocation*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.loc;
      
          NSLog(@"MATraceLocation::get_loc:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MATraceLocation::get_angle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceLocation::get_angle");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceLocation* ref = (MATraceLocation*) HEAP[@(refId)];
      
          // 开始调用
          double result = ref.angle;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MATraceLocation::get_speed": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceLocation::get_speed");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceLocation* ref = (MATraceLocation*) HEAP[@(refId)];
      
          // 开始调用
          double result = ref.speed;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MATraceLocation::get_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceLocation::get_time");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceLocation* ref = (MATraceLocation*) HEAP[@(refId)];
      
          // 开始调用
          double result = ref.time;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAArc::get_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAArc::get_startCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAArc* ref = (MAArc*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.startCoordinate;
      
          NSLog(@"MAArc::get_startCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAArc::get_passedCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAArc::get_passedCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAArc* ref = (MAArc*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.passedCoordinate;
      
          NSLog(@"MAArc::get_passedCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAArc::get_endCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAArc::get_endCoordinate");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAArc* ref = (MAArc*) HEAP[@(refId)];
      
          // 开始调用
          CLLocationCoordinate2D result = ref.endCoordinate;
      
          NSLog(@"MAArc::get_endCoordinate:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(CLLocationCoordinate2D)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAArc::get_boundingMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAArc::get_boundingMapRect");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAArc* ref = (MAArc*) HEAP[@(refId)];
      
          // 开始调用
          MAMapRect result = ref.boundingMapRect;
      
          NSLog(@"MAArc::get_boundingMapRect:结构体getter暂时不支持");
      
          // 返回值: 结构体
          // NSValue* resultValue = [NSValue value:&result withObjCType:@encode(MAMapRect)];
          // HEAP[@(resultValue.hash)] = resultValue;
          //
          // methodResult(@(resultValue.hash));
      
          methodResult(nil/* 结构体getter暂时不支持 */);
      },
      
      @"MAUserLocationRepresentation::get_showsAccuracyRing": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocationRepresentation::get_showsAccuracyRing");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocationRepresentation* ref = (MAUserLocationRepresentation*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsAccuracyRing;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAUserLocationRepresentation::get_showsHeadingIndicator": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocationRepresentation::get_showsHeadingIndicator");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocationRepresentation* ref = (MAUserLocationRepresentation*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.showsHeadingIndicator;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAUserLocationRepresentation::get_lineWidth": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocationRepresentation::get_lineWidth");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocationRepresentation* ref = (MAUserLocationRepresentation*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.lineWidth;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAUserLocationRepresentation::get_enablePulseAnnimation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocationRepresentation::get_enablePulseAnnimation");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocationRepresentation* ref = (MAUserLocationRepresentation*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.enablePulseAnnimation;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlayPathRenderer::get_lineWidth": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::get_lineWidth");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.lineWidth;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlayPathRenderer::get_lineJoinType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::get_lineJoinType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MALineJoinType result = ref.lineJoinType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlayPathRenderer::get_lineCapType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::get_lineCapType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MALineCapType result = ref.lineCapType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlayPathRenderer::get_miterLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::get_miterLimit");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          // 开始调用
          CGFloat result = ref.miterLimit;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlayPathRenderer::get_lineDash": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::get_lineDash");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          // 开始调用
          BOOL result = ref.lineDash;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAOverlayPathRenderer::get_lineDashType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::get_lineDashType");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MALineDashType result = ref.lineDashType;
      
      
      
          // 返回值: Value
          methodResult(@(result));
      },
      
      @"MAGroundOverlayRenderer::get_groundOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAGroundOverlayRenderer::get_groundOverlay");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MAGroundOverlayRenderer* ref = (MAGroundOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MAGroundOverlay* result = ref.groundOverlay;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"MACustomBuildingOverlayRenderer::get_customBuildingOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlayRenderer::get_customBuildingOverlay");
      
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayRenderer* ref = (MACustomBuildingOverlayRenderer*) HEAP[@(refId)];
      
          // 开始调用
          MACustomBuildingOverlay* result = ref.customBuildingOverlay;
      
      
      
          // 返回值: 引用
          HEAP[@(result.hash)] = result;
          methodResult(@(result.hash));
      },
      
      @"AMapNaviConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString* appScheme = (NSString*) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString* appName = (NSString*) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_destination": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_destination");
      
          // 参数
          // 结构体参数
          NSValue* destinationValue = (NSValue*) HEAP[@([args[@"destination"] integerValue])];
          CLLocationCoordinate2D destination;
          [destinationValue getValue:&destination];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          ref.destination = destination;
          methodResult(@"success");
      },
      
      @"AMapNaviConfig::set_strategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapNaviConfig::set_strategy");
      
          // 参数
          // 枚举参数
          AMapDrivingStrategy strategy = (AMapDrivingStrategy) [args[@"strategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapNaviConfig* ref = (AMapNaviConfig*) HEAP[@(refId)];
      
          ref.strategy = strategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString* appScheme = (NSString*) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString* appName = (NSString*) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_startCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* startCoordinateValue = (NSValue*) HEAP[@([args[@"startCoordinate"] integerValue])];
          CLLocationCoordinate2D startCoordinate;
          [startCoordinateValue getValue:&startCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_destinationCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_destinationCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* destinationCoordinateValue = (NSValue*) HEAP[@([args[@"destinationCoordinate"] integerValue])];
          CLLocationCoordinate2D destinationCoordinate;
          [destinationCoordinateValue getValue:&destinationCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.destinationCoordinate = destinationCoordinate;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_drivingStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_drivingStrategy");
      
          // 参数
          // 枚举参数
          AMapDrivingStrategy drivingStrategy = (AMapDrivingStrategy) [args[@"drivingStrategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.drivingStrategy = drivingStrategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_transitStrategy": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_transitStrategy");
      
          // 参数
          // 枚举参数
          AMapTransitStrategy transitStrategy = (AMapTransitStrategy) [args[@"transitStrategy"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.transitStrategy = transitStrategy;
          methodResult(@"success");
      },
      
      @"AMapRouteConfig::set_routeType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapRouteConfig::set_routeType");
      
          // 参数
          // 枚举参数
          AMapRouteSearchType routeType = (AMapRouteSearchType) [args[@"routeType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapRouteConfig* ref = (AMapRouteConfig*) HEAP[@(refId)];
      
          ref.routeType = routeType;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_appScheme": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_appScheme");
      
          // 参数
          // jsonable参数
          NSString* appScheme = (NSString*) args[@"appScheme"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.appScheme = appScheme;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_appName": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_appName");
      
          // 参数
          // jsonable参数
          NSString* appName = (NSString*) args[@"appName"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.appName = appName;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_keywords": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_keywords");
      
          // 参数
          // jsonable参数
          NSString* keywords = (NSString*) args[@"keywords"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.keywords = keywords;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_leftTopCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_leftTopCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* leftTopCoordinateValue = (NSValue*) HEAP[@([args[@"leftTopCoordinate"] integerValue])];
          CLLocationCoordinate2D leftTopCoordinate;
          [leftTopCoordinateValue getValue:&leftTopCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.leftTopCoordinate = leftTopCoordinate;
          methodResult(@"success");
      },
      
      @"AMapPOIConfig::set_rightBottomCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapPOIConfig::set_rightBottomCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* rightBottomCoordinateValue = (NSValue*) HEAP[@([args[@"rightBottomCoordinate"] integerValue])];
          CLLocationCoordinate2D rightBottomCoordinate;
          [rightBottomCoordinateValue getValue:&rightBottomCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapPOIConfig* ref = (AMapPOIConfig*) HEAP[@(refId)];
      
          ref.rightBottomCoordinate = rightBottomCoordinate;
          methodResult(@"success");
      },
      
      @"AMapServices::set_apiKey": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_apiKey");
      
          // 参数
          // jsonable参数
          NSString* apiKey = (NSString*) args[@"apiKey"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          ref.apiKey = apiKey;
          methodResult(@"success");
      },
      
      @"AMapServices::set_enableHTTPS": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_enableHTTPS");
      
          // 参数
          // jsonable参数
          BOOL enableHTTPS = [args[@"enableHTTPS"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          ref.enableHTTPS = enableHTTPS;
          methodResult(@"success");
      },
      
      @"AMapServices::set_crashReportEnabled": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"AMapServices::set_crashReportEnabled");
      
          // 参数
          // jsonable参数
          BOOL crashReportEnabled = [args[@"crashReportEnabled"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          AMapServices* ref = (AMapServices*) HEAP[@(refId)];
      
          ref.crashReportEnabled = crashReportEnabled;
          methodResult(@"success");
      },
      
      @"MAGroundOverlay::set_alpha": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAGroundOverlay::set_alpha");
      
          // 参数
          // jsonable参数
          CGFloat alpha = [args[@"alpha"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAGroundOverlay* ref = (MAGroundOverlay*) HEAP[@(refId)];
      
          ref.alpha = alpha;
          methodResult(@"success");
      },
      
      @"MAPinAnnotationView::set_pinColor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPinAnnotationView::set_pinColor");
      
          // 参数
          // 枚举参数
          MAPinAnnotationColor pinColor = (MAPinAnnotationColor) [args[@"pinColor"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAPinAnnotationView* ref = (MAPinAnnotationView*) HEAP[@(refId)];
      
          ref.pinColor = pinColor;
          methodResult(@"success");
      },
      
      @"MAPinAnnotationView::set_animatesDrop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPinAnnotationView::set_animatesDrop");
      
          // 参数
          // jsonable参数
          BOOL animatesDrop = [args[@"animatesDrop"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAPinAnnotationView* ref = (MAPinAnnotationView*) HEAP[@(refId)];
      
          ref.animatesDrop = animatesDrop;
          methodResult(@"success");
      },
      
      @"MAHeatMapNode::set_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapNode::set_coordinate");
      
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapNode* ref = (MAHeatMapNode*) HEAP[@(refId)];
      
          ref.coordinate = coordinate;
          methodResult(@"success");
      },
      
      @"MAHeatMapNode::set_intensity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapNode::set_intensity");
      
          // 参数
          // jsonable参数
          float intensity = [args[@"intensity"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapNode* ref = (MAHeatMapNode*) HEAP[@(refId)];
      
          ref.intensity = intensity;
          methodResult(@"success");
      },
      
      @"MAHeatMapTileOverlay::set_data": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::set_data");
      
          // 参数
          // 列表参数
          NSArray<NSNumber*>* dataRefArray = (NSArray<NSNumber*> *) args[@"data"];
          NSMutableArray<MAHeatMapNode*>* data = [NSMutableArray arrayWithCapacity:dataRefArray.count];
          for (int i = 0; i < data.count; i++) {
              MAHeatMapNode* item = (MAHeatMapNode*) HEAP[[dataRefArray objectAtIndex:i]];
              [data addObject:item];
          }
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          ref.data = data;
          methodResult(@"success");
      },
      
      @"MAHeatMapTileOverlay::set_radius": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::set_radius");
      
          // 参数
          // jsonable参数
          NSInteger radius = [args[@"radius"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          ref.radius = radius;
          methodResult(@"success");
      },
      
      @"MAHeatMapTileOverlay::set_opacity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::set_opacity");
      
          // 参数
          // jsonable参数
          CGFloat opacity = [args[@"opacity"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          ref.opacity = opacity;
          methodResult(@"success");
      },
      
      @"MAHeatMapTileOverlay::set_gradient": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::set_gradient");
      
          // 参数
          // 引用参数
          MAHeatMapGradient* gradient = (MAHeatMapGradient*) HEAP[@([args[@"gradient"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          ref.gradient = gradient;
          methodResult(@"success");
      },
      
      @"MAHeatMapTileOverlay::set_allowRetinaAdapting": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAHeatMapTileOverlay::set_allowRetinaAdapting");
      
          // 参数
          // jsonable参数
          BOOL allowRetinaAdapting = [args[@"allowRetinaAdapting"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAHeatMapTileOverlay* ref = (MAHeatMapTileOverlay*) HEAP[@(refId)];
      
          ref.allowRetinaAdapting = allowRetinaAdapting;
          methodResult(@"success");
      },
      
      @"MAMapStatus::set_centerCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::set_centerCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* centerCoordinateValue = (NSValue*) HEAP[@([args[@"centerCoordinate"] integerValue])];
          CLLocationCoordinate2D centerCoordinate;
          [centerCoordinateValue getValue:&centerCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          ref.centerCoordinate = centerCoordinate;
          methodResult(@"success");
      },
      
      @"MAMapStatus::set_zoomLevel": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::set_zoomLevel");
      
          // 参数
          // jsonable参数
          CGFloat zoomLevel = [args[@"zoomLevel"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          ref.zoomLevel = zoomLevel;
          methodResult(@"success");
      },
      
      @"MAMapStatus::set_rotationDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::set_rotationDegree");
      
          // 参数
          // jsonable参数
          CGFloat rotationDegree = [args[@"rotationDegree"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          ref.rotationDegree = rotationDegree;
          methodResult(@"success");
      },
      
      @"MAMapStatus::set_cameraDegree": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::set_cameraDegree");
      
          // 参数
          // jsonable参数
          CGFloat cameraDegree = [args[@"cameraDegree"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          ref.cameraDegree = cameraDegree;
          methodResult(@"success");
      },
      
      @"MAMapStatus::set_screenAnchor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapStatus::set_screenAnchor");
      
          // 参数
          // 结构体参数
          NSValue* screenAnchorValue = (NSValue*) HEAP[@([args[@"screenAnchor"] integerValue])];
          CGPoint screenAnchor;
          [screenAnchorValue getValue:&screenAnchor];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapStatus* ref = (MAMapStatus*) HEAP[@(refId)];
      
          ref.screenAnchor = screenAnchor;
          methodResult(@"success");
      },
      
      @"MAPointAnnotation::set_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPointAnnotation::set_coordinate");
      
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAPointAnnotation* ref = (MAPointAnnotation*) HEAP[@(refId)];
      
          ref.coordinate = coordinate;
          methodResult(@"success");
      },
      
      @"MAPointAnnotation::set_lockedToScreen": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPointAnnotation::set_lockedToScreen");
      
          // 参数
          // jsonable参数
          BOOL lockedToScreen = [args[@"lockedToScreen"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAPointAnnotation* ref = (MAPointAnnotation*) HEAP[@(refId)];
      
          ref.lockedToScreen = lockedToScreen;
          methodResult(@"success");
      },
      
      @"MAPointAnnotation::set_lockedScreenPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPointAnnotation::set_lockedScreenPoint");
      
          // 参数
          // 结构体参数
          NSValue* lockedScreenPointValue = (NSValue*) HEAP[@([args[@"lockedScreenPoint"] integerValue])];
          CGPoint lockedScreenPoint;
          [lockedScreenPointValue getValue:&lockedScreenPoint];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAPointAnnotation* ref = (MAPointAnnotation*) HEAP[@(refId)];
      
          ref.lockedScreenPoint = lockedScreenPoint;
          methodResult(@"success");
      },
      
      @"MACircle::set_hollowShapes": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACircle::set_hollowShapes");
      
          // 参数
          // 列表参数
          NSArray<NSNumber*>* hollowShapesRefArray = (NSArray<NSNumber*> *) args[@"hollowShapes"];
          NSMutableArray<id<MAOverlay>>* hollowShapes = [NSMutableArray arrayWithCapacity:hollowShapesRefArray.count];
          for (int i = 0; i < hollowShapes.count; i++) {
              id<MAOverlay> item = (id<MAOverlay>) HEAP[[hollowShapesRefArray objectAtIndex:i]];
              [hollowShapes addObject:item];
          }
      
          NSInteger refId = [args[@"refId"] integerValue];
          MACircle* ref = (MACircle*) HEAP[@(refId)];
      
          ref.hollowShapes = hollowShapes;
          methodResult(@"success");
      },
      
      @"MACircle::set_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACircle::set_coordinate");
      
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MACircle* ref = (MACircle*) HEAP[@(refId)];
      
          ref.coordinate = coordinate;
          methodResult(@"success");
      },
      
      @"MAAnnotation::set_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAAnnotation::set_title");
      
          // 参数
          // jsonable参数
          NSString* title = (NSString*) args[@"title"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnnotation> ref = (id<MAAnnotation>) HEAP[@(refId)];
      
          ref.title = title;
          methodResult(@"success");
      },
      
      @"MAAnnotation::set_subtitle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAAnnotation::set_subtitle");
      
          // 参数
          // jsonable参数
          NSString* subtitle = (NSString*) args[@"subtitle"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          id<MAAnnotation> ref = (id<MAAnnotation>) HEAP[@(refId)];
      
          ref.subtitle = subtitle;
          methodResult(@"success");
      },
      
      @"MAMapCustomStyleOptions::set_styleId": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMapCustomStyleOptions::set_styleId");
      
          // 参数
          // jsonable参数
          NSString* styleId = (NSString*) args[@"styleId"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMapCustomStyleOptions* ref = (MAMapCustomStyleOptions*) HEAP[@(refId)];
      
          ref.styleId = styleId;
          methodResult(@"success");
      },
      
      @"MAPolygon::set_hollowShapes": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPolygon::set_hollowShapes");
      
          // 参数
          // 列表参数
          NSArray<NSNumber*>* hollowShapesRefArray = (NSArray<NSNumber*> *) args[@"hollowShapes"];
          NSMutableArray<id<MAOverlay>>* hollowShapes = [NSMutableArray arrayWithCapacity:hollowShapesRefArray.count];
          for (int i = 0; i < hollowShapes.count; i++) {
              id<MAOverlay> item = (id<MAOverlay>) HEAP[[hollowShapesRefArray objectAtIndex:i]];
              [hollowShapes addObject:item];
          }
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolygon* ref = (MAPolygon*) HEAP[@(refId)];
      
          ref.hollowShapes = hollowShapes;
          methodResult(@"success");
      },
      
      @"MAMultiColoredPolylineRenderer::set_gradient": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiColoredPolylineRenderer::set_gradient");
      
          // 参数
          // jsonable参数
          BOOL gradient = [args[@"gradient"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiColoredPolylineRenderer* ref = (MAMultiColoredPolylineRenderer*) HEAP[@(refId)];
      
          ref.gradient = gradient;
          methodResult(@"success");
      },
      
      @"MAAnimatedAnnotation::set_movingDirection": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAAnimatedAnnotation::set_movingDirection");
      
          // 参数
          // jsonable参数
          CLLocationDirection movingDirection = [args[@"movingDirection"] doubleValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAAnimatedAnnotation* ref = (MAAnimatedAnnotation*) HEAP[@(refId)];
      
          ref.movingDirection = movingDirection;
          methodResult(@"success");
      },
      
      @"MATraceManager::set_delegate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceManager::set_delegate");
      
          // 参数
      
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceManager* ref = (MATraceManager*) HEAP[@(refId)];
      
          ref.delegate = self;
          methodResult(@"success");
      },
      
      @"MAMultiPointOverlayRenderer::set_delegate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointOverlayRenderer::set_delegate");
      
          // 参数
      
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointOverlayRenderer* ref = (MAMultiPointOverlayRenderer*) HEAP[@(refId)];
      
          ref.delegate = self;
          methodResult(@"success");
      },
      
      @"MAMultiPointOverlayRenderer::set_anchor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointOverlayRenderer::set_anchor");
      
          // 参数
          // 结构体参数
          NSValue* anchorValue = (NSValue*) HEAP[@([args[@"anchor"] integerValue])];
          CGPoint anchor;
          [anchorValue getValue:&anchor];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointOverlayRenderer* ref = (MAMultiPointOverlayRenderer*) HEAP[@(refId)];
      
          ref.anchor = anchor;
          methodResult(@"success");
      },
      
      @"MAPolylineRenderer::set_is3DArrowLine": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAPolylineRenderer::set_is3DArrowLine");
      
          // 参数
          // jsonable参数
          BOOL is3DArrowLine = [args[@"is3DArrowLine"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAPolylineRenderer* ref = (MAPolylineRenderer*) HEAP[@(refId)];
      
          ref.is3DArrowLine = is3DArrowLine;
          methodResult(@"success");
      },
      
      @"MAShape::set_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAShape::set_title");
      
          // 参数
          // jsonable参数
          NSString* title = (NSString*) args[@"title"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAShape* ref = (MAShape*) HEAP[@(refId)];
      
          ref.title = title;
          methodResult(@"success");
      },
      
      @"MAShape::set_subtitle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAShape::set_subtitle");
      
          // 参数
          // jsonable参数
          NSString* subtitle = (NSString*) args[@"subtitle"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAShape* ref = (MAShape*) HEAP[@(refId)];
      
          ref.subtitle = subtitle;
          methodResult(@"success");
      },
      
      @"MATileOverlay::set_minimumZ": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::set_minimumZ");
      
          // 参数
          // jsonable参数
          NSInteger minimumZ = [args[@"minimumZ"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          ref.minimumZ = minimumZ;
          methodResult(@"success");
      },
      
      @"MATileOverlay::set_maximumZ": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::set_maximumZ");
      
          // 参数
          // jsonable参数
          NSInteger maximumZ = [args[@"maximumZ"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          ref.maximumZ = maximumZ;
          methodResult(@"success");
      },
      
      @"MATileOverlay::set_canReplaceMapContent": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::set_canReplaceMapContent");
      
          // 参数
          // jsonable参数
          BOOL canReplaceMapContent = [args[@"canReplaceMapContent"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          ref.canReplaceMapContent = canReplaceMapContent;
          methodResult(@"success");
      },
      
      @"MATileOverlay::set_boundingMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::set_boundingMapRect");
      
          // 参数
          // 结构体参数
          NSValue* boundingMapRectValue = (NSValue*) HEAP[@([args[@"boundingMapRect"] integerValue])];
          MAMapRect boundingMapRect;
          [boundingMapRectValue getValue:&boundingMapRect];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          ref.boundingMapRect = boundingMapRect;
          methodResult(@"success");
      },
      
      @"MATileOverlay::set_disableOffScreenTileLoading": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATileOverlay::set_disableOffScreenTileLoading");
      
          // 参数
          // jsonable参数
          BOOL disableOffScreenTileLoading = [args[@"disableOffScreenTileLoading"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATileOverlay* ref = (MATileOverlay*) HEAP[@(refId)];
      
          ref.disableOffScreenTileLoading = disableOffScreenTileLoading;
          methodResult(@"success");
      },
      
      @"MAOfflineItemCommonCity::set_province": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOfflineItemCommonCity::set_province");
      
          // 参数
          // 引用参数
          MAOfflineItem* province = (MAOfflineItem*) HEAP[@([args[@"province"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOfflineItemCommonCity* ref = (MAOfflineItemCommonCity*) HEAP[@(refId)];
      
          ref.province = province;
          methodResult(@"success");
      },
      
      @"MAParticleOverlayOptions::set_visibile": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::set_visibile");
      
          // 参数
          // jsonable参数
          BOOL visibile = [args[@"visibile"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          ref.visibile = visibile;
          methodResult(@"success");
      },
      
      @"MAParticleOverlayOptions::set_loop": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::set_loop");
      
          // 参数
          // jsonable参数
          BOOL loop = [args[@"loop"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          ref.loop = loop;
          methodResult(@"success");
      },
      
      @"MAParticleOverlayOptions::set_maxParticles": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::set_maxParticles");
      
          // 参数
          // jsonable参数
          NSInteger maxParticles = [args[@"maxParticles"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          ref.maxParticles = maxParticles;
          methodResult(@"success");
      },
      
      @"MAParticleOverlayOptions::set_particleStartColor": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::set_particleStartColor");
      
          // 参数
          // 引用参数
          id<MAParticleColorGenerate> particleStartColor = (id<MAParticleColorGenerate>) HEAP[@([args[@"particleStartColor"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          ref.particleStartColor = particleStartColor;
          methodResult(@"success");
      },
      
      @"MAParticleOverlayOptions::set_particleStartSpeed": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::set_particleStartSpeed");
      
          // 参数
          // 引用参数
          id<MAParticleVelocityGenerate> particleStartSpeed = (id<MAParticleVelocityGenerate>) HEAP[@([args[@"particleStartSpeed"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          ref.particleStartSpeed = particleStartSpeed;
          methodResult(@"success");
      },
      
      @"MAParticleOverlayOptions::set_particleEmissionModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::set_particleEmissionModule");
      
          // 参数
          // 引用参数
          MAParticleEmissionModule* particleEmissionModule = (MAParticleEmissionModule*) HEAP[@([args[@"particleEmissionModule"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          ref.particleEmissionModule = particleEmissionModule;
          methodResult(@"success");
      },
      
      @"MAParticleOverlayOptions::set_particleShapeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::set_particleShapeModule");
      
          // 参数
          // 引用参数
          id<MAParticleShapeModule> particleShapeModule = (id<MAParticleShapeModule>) HEAP[@([args[@"particleShapeModule"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          ref.particleShapeModule = particleShapeModule;
          methodResult(@"success");
      },
      
      @"MAParticleOverlayOptions::set_particleOverLifeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAParticleOverlayOptions::set_particleOverLifeModule");
      
          // 参数
          // 引用参数
          MAParticleOverLifeModule* particleOverLifeModule = (MAParticleOverLifeModule*) HEAP[@([args[@"particleOverLifeModule"] integerValue])];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAParticleOverlayOptions* ref = (MAParticleOverlayOptions*) HEAP[@(refId)];
      
          ref.particleOverLifeModule = particleOverLifeModule;
          methodResult(@"success");
      },
      
      @"MAOverlayRenderer::set_glPoints": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayRenderer::set_glPoints");
      
          // 参数
          // 列表参数
          NSArray* glPointsRefIdArray = (NSArray*) args[@"glPoints"];
          CGPoint glPoints[glPointsRefIdArray.count];
      
          for (int i = 0; i < glPointsRefIdArray.count; i++) {
              NSValue* glPointsValue = (NSValue*) HEAP[[glPointsRefIdArray objectAtIndex:i]];
              CGPoint glPointsItem;
              [glPointsValue getValue:&glPointsItem];
              glPoints[i] = glPointsItem;
          }
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          ref.glPoints = glPoints;
          methodResult(@"success");
      },
      
      @"MAOverlayRenderer::set_glPointCount": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayRenderer::set_glPointCount");
      
          // 参数
          // jsonable参数
          NSUInteger glPointCount = [args[@"glPointCount"] unsignedIntegerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          ref.glPointCount = glPointCount;
          methodResult(@"success");
      },
      
      @"MAOverlayRenderer::set_alpha": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayRenderer::set_alpha");
      
          // 参数
          // jsonable参数
          CGFloat alpha = [args[@"alpha"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayRenderer* ref = (MAOverlayRenderer*) HEAP[@(refId)];
      
          ref.alpha = alpha;
          methodResult(@"success");
      },
      
      @"MAMultiPointItem::set_coordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointItem::set_coordinate");
      
          // 参数
          // 结构体参数
          NSValue* coordinateValue = (NSValue*) HEAP[@([args[@"coordinate"] integerValue])];
          CLLocationCoordinate2D coordinate;
          [coordinateValue getValue:&coordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointItem* ref = (MAMultiPointItem*) HEAP[@(refId)];
      
          ref.coordinate = coordinate;
          methodResult(@"success");
      },
      
      @"MAMultiPointItem::set_customID": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointItem::set_customID");
      
          // 参数
          // jsonable参数
          NSString* customID = (NSString*) args[@"customID"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointItem* ref = (MAMultiPointItem*) HEAP[@(refId)];
      
          ref.customID = customID;
          methodResult(@"success");
      },
      
      @"MAMultiPointItem::set_title": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointItem::set_title");
      
          // 参数
          // jsonable参数
          NSString* title = (NSString*) args[@"title"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointItem* ref = (MAMultiPointItem*) HEAP[@(refId)];
      
          ref.title = title;
          methodResult(@"success");
      },
      
      @"MAMultiPointItem::set_subtitle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAMultiPointItem::set_subtitle");
      
          // 参数
          // jsonable参数
          NSString* subtitle = (NSString*) args[@"subtitle"];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAMultiPointItem* ref = (MAMultiPointItem*) HEAP[@(refId)];
      
          ref.subtitle = subtitle;
          methodResult(@"success");
      },
      
      @"MACustomBuildingOverlayOption::set_height": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlayOption::set_height");
      
          // 参数
          // jsonable参数
          CGFloat height = [args[@"height"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayOption* ref = (MACustomBuildingOverlayOption*) HEAP[@(refId)];
      
          ref.height = height;
          methodResult(@"success");
      },
      
      @"MACustomBuildingOverlayOption::set_heightScale": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlayOption::set_heightScale");
      
          // 参数
          // jsonable参数
          CGFloat heightScale = [args[@"heightScale"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayOption* ref = (MACustomBuildingOverlayOption*) HEAP[@(refId)];
      
          ref.heightScale = heightScale;
          methodResult(@"success");
      },
      
      @"MACustomBuildingOverlayOption::set_visibile": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MACustomBuildingOverlayOption::set_visibile");
      
          // 参数
          // jsonable参数
          BOOL visibile = [args[@"visibile"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MACustomBuildingOverlayOption* ref = (MACustomBuildingOverlayOption*) HEAP[@(refId)];
      
          ref.visibile = visibile;
          methodResult(@"success");
      },
      
      @"MATraceLocation::set_loc": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceLocation::set_loc");
      
          // 参数
          // 结构体参数
          NSValue* locValue = (NSValue*) HEAP[@([args[@"loc"] integerValue])];
          CLLocationCoordinate2D loc;
          [locValue getValue:&loc];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceLocation* ref = (MATraceLocation*) HEAP[@(refId)];
      
          ref.loc = loc;
          methodResult(@"success");
      },
      
      @"MATraceLocation::set_angle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceLocation::set_angle");
      
          // 参数
          // jsonable参数
          double angle = [args[@"angle"] doubleValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceLocation* ref = (MATraceLocation*) HEAP[@(refId)];
      
          ref.angle = angle;
          methodResult(@"success");
      },
      
      @"MATraceLocation::set_speed": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceLocation::set_speed");
      
          // 参数
          // jsonable参数
          double speed = [args[@"speed"] doubleValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceLocation* ref = (MATraceLocation*) HEAP[@(refId)];
      
          ref.speed = speed;
          methodResult(@"success");
      },
      
      @"MATraceLocation::set_time": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MATraceLocation::set_time");
      
          // 参数
          // jsonable参数
          double time = [args[@"time"] doubleValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MATraceLocation* ref = (MATraceLocation*) HEAP[@(refId)];
      
          ref.time = time;
          methodResult(@"success");
      },
      
      @"MAArc::set_startCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAArc::set_startCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* startCoordinateValue = (NSValue*) HEAP[@([args[@"startCoordinate"] integerValue])];
          CLLocationCoordinate2D startCoordinate;
          [startCoordinateValue getValue:&startCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAArc* ref = (MAArc*) HEAP[@(refId)];
      
          ref.startCoordinate = startCoordinate;
          methodResult(@"success");
      },
      
      @"MAArc::set_passedCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAArc::set_passedCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* passedCoordinateValue = (NSValue*) HEAP[@([args[@"passedCoordinate"] integerValue])];
          CLLocationCoordinate2D passedCoordinate;
          [passedCoordinateValue getValue:&passedCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAArc* ref = (MAArc*) HEAP[@(refId)];
      
          ref.passedCoordinate = passedCoordinate;
          methodResult(@"success");
      },
      
      @"MAArc::set_endCoordinate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAArc::set_endCoordinate");
      
          // 参数
          // 结构体参数
          NSValue* endCoordinateValue = (NSValue*) HEAP[@([args[@"endCoordinate"] integerValue])];
          CLLocationCoordinate2D endCoordinate;
          [endCoordinateValue getValue:&endCoordinate];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAArc* ref = (MAArc*) HEAP[@(refId)];
      
          ref.endCoordinate = endCoordinate;
          methodResult(@"success");
      },
      
      @"MAUserLocationRepresentation::set_showsAccuracyRing": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocationRepresentation::set_showsAccuracyRing");
      
          // 参数
          // jsonable参数
          BOOL showsAccuracyRing = [args[@"showsAccuracyRing"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocationRepresentation* ref = (MAUserLocationRepresentation*) HEAP[@(refId)];
      
          ref.showsAccuracyRing = showsAccuracyRing;
          methodResult(@"success");
      },
      
      @"MAUserLocationRepresentation::set_showsHeadingIndicator": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocationRepresentation::set_showsHeadingIndicator");
      
          // 参数
          // jsonable参数
          BOOL showsHeadingIndicator = [args[@"showsHeadingIndicator"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocationRepresentation* ref = (MAUserLocationRepresentation*) HEAP[@(refId)];
      
          ref.showsHeadingIndicator = showsHeadingIndicator;
          methodResult(@"success");
      },
      
      @"MAUserLocationRepresentation::set_lineWidth": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocationRepresentation::set_lineWidth");
      
          // 参数
          // jsonable参数
          CGFloat lineWidth = [args[@"lineWidth"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocationRepresentation* ref = (MAUserLocationRepresentation*) HEAP[@(refId)];
      
          ref.lineWidth = lineWidth;
          methodResult(@"success");
      },
      
      @"MAUserLocationRepresentation::set_enablePulseAnnimation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAUserLocationRepresentation::set_enablePulseAnnimation");
      
          // 参数
          // jsonable参数
          BOOL enablePulseAnnimation = [args[@"enablePulseAnnimation"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAUserLocationRepresentation* ref = (MAUserLocationRepresentation*) HEAP[@(refId)];
      
          ref.enablePulseAnnimation = enablePulseAnnimation;
          methodResult(@"success");
      },
      
      @"MAOverlayPathRenderer::set_lineWidth": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::set_lineWidth");
      
          // 参数
          // jsonable参数
          CGFloat lineWidth = [args[@"lineWidth"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          ref.lineWidth = lineWidth;
          methodResult(@"success");
      },
      
      @"MAOverlayPathRenderer::set_lineJoinType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::set_lineJoinType");
      
          // 参数
          // 枚举参数
          MALineJoinType lineJoinType = (MALineJoinType) [args[@"lineJoinType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          ref.lineJoinType = lineJoinType;
          methodResult(@"success");
      },
      
      @"MAOverlayPathRenderer::set_lineCapType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::set_lineCapType");
      
          // 参数
          // 枚举参数
          MALineCapType lineCapType = (MALineCapType) [args[@"lineCapType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          ref.lineCapType = lineCapType;
          methodResult(@"success");
      },
      
      @"MAOverlayPathRenderer::set_miterLimit": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::set_miterLimit");
      
          // 参数
          // jsonable参数
          CGFloat miterLimit = [args[@"miterLimit"] floatValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          ref.miterLimit = miterLimit;
          methodResult(@"success");
      },
      
      @"MAOverlayPathRenderer::set_lineDash": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::set_lineDash");
      
          // 参数
          // jsonable参数
          BOOL lineDash = [args[@"lineDash"] boolValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          ref.lineDash = lineDash;
          methodResult(@"success");
      },
      
      @"MAOverlayPathRenderer::set_lineDashType": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"MAOverlayPathRenderer::set_lineDashType");
      
          // 参数
          // 枚举参数
          MALineDashType lineDashType = (MALineDashType) [args[@"lineDashType"] integerValue];
      
          NSInteger refId = [args[@"refId"] integerValue];
          MAOverlayPathRenderer* ref = (MAOverlayPathRenderer*) HEAP[@(refId)];
      
          ref.lineDashType = lineDashType;
          methodResult(@"success");
      },
      
      @"RefClass::isKindOfAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapURLSearch class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapNaviConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapRouteConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapPOIConfig class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[AMapServices class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOfflineCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOfflineCity class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOfflineItemNationWide": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOfflineItemNationWide class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMultiPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMultiPoint class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAGroundOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAGroundOverlay class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAPolygonRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAPolygonRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAPinAnnotationView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAPinAnnotationView class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAHeatMapNode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAHeatMapNode class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAHeatMapGradient": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAHeatMapGradient class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAHeatMapTileOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAHeatMapTileOverlay class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMapStatus": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMapStatus class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAPointAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAPointAnnotation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMACircle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MACircle class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAArcRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAArcRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMapCustomStyleOptions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMapCustomStyleOptions class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAPolygon class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleOverlay class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAPolyline class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMultiColoredPolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMultiColoredPolylineRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAAnimatedAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAAnimatedAnnotation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMultiTexturePolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMultiTexturePolylineRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOfflineProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOfflineProvince class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMATileOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MATileOverlayRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOfflineItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOfflineItem class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAGeodesicPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAGeodesicPolyline class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMATouchPoi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MATouchPoi class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOfflineItemMunicipality": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOfflineItemMunicipality class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMultiPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMultiPolyline class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMATraceManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MATraceManager class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMultiPointOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMultiPointOverlayRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAIndoorFloorInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAIndoorFloorInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAIndoorInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAIndoorInfo class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAPolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAPolylineRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAAnnotationMoveAnimation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAAnnotationMoveAnimation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAShape": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAShape class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAAnnotationView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAAnnotationView class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMATileOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MATileOverlay class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMACustomCalloutView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MACustomCalloutView class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOfflineItemCommonCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOfflineItemCommonCity class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOfflineMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOfflineMap class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMACircleRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MACircleRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleOverlayRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleRandomVelocityGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleRandomVelocityGenerate class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleRandomColorGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleRandomColorGenerate class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleConstantRotationGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleConstantRotationGenerate class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleCurveSizeGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleCurveSizeGenerate class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleEmissionModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleEmissionModule class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleSinglePointShapeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleSinglePointShapeModule class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleRectShapeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleRectShapeModule class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleOverLifeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleOverLifeModule class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleOverlayOptions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleOverlayOptions class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAParticleOverlayOptionsFactory": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAParticleOverlayOptionsFactory class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOverlayRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAUserLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAUserLocation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMultiPointItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMultiPointItem class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMultiPointOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMultiPointOverlay class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMACustomBuildingOverlayOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MACustomBuildingOverlayOption class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMACustomBuildingOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MACustomBuildingOverlay class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMATracePoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MATracePoint class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMATraceLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MATraceLocation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAArc": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAArc class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAUserLocationRepresentation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAUserLocationRepresentation class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAMapView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAMapView class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAOverlayPathRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAOverlayPathRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMAGroundOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MAGroundOverlayRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::isKindOfMACustomBuildingOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          BOOL isTargetType = [ref isKindOfClass:[MACustomBuildingOverlayRenderer class]];
          methodResult(@(isTargetType));
      },
      
      @"RefClass::asAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapURLSearch *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapNaviConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapRouteConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapPOIConfig *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (AMapServices *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOfflineCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOfflineCity *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOfflineItemNationWide": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOfflineItemNationWide *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMultiPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMultiPoint *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAGroundOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAGroundOverlay *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAPolygonRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAPolygonRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAPinAnnotationView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAPinAnnotationView *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAHeatMapNode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAHeatMapNode *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAHeatMapGradient": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAHeatMapGradient *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAHeatMapTileOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAHeatMapTileOverlay *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMapStatus": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMapStatus *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAPointAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAPointAnnotation *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMACircle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MACircle *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAArcRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAArcRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMapCustomStyleOptions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMapCustomStyleOptions *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAPolygon *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleOverlay *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAPolyline *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMultiColoredPolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMultiColoredPolylineRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAAnimatedAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAAnimatedAnnotation *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMultiTexturePolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMultiTexturePolylineRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOfflineProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOfflineProvince *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMATileOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MATileOverlayRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOfflineItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOfflineItem *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAGeodesicPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAGeodesicPolyline *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMATouchPoi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MATouchPoi *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOfflineItemMunicipality": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOfflineItemMunicipality *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMultiPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMultiPolyline *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMATraceManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MATraceManager *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMultiPointOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMultiPointOverlayRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAIndoorFloorInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAIndoorFloorInfo *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAIndoorInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAIndoorInfo *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAPolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAPolylineRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAAnnotationMoveAnimation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAAnnotationMoveAnimation *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAShape": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAShape *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAAnnotationView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAAnnotationView *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMATileOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MATileOverlay *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMACustomCalloutView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MACustomCalloutView *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOfflineItemCommonCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOfflineItemCommonCity *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOfflineMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOfflineMap *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMACircleRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MACircleRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleOverlayRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleRandomVelocityGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleRandomVelocityGenerate *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleRandomColorGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleRandomColorGenerate *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleConstantRotationGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleConstantRotationGenerate *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleCurveSizeGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleCurveSizeGenerate *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleEmissionModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleEmissionModule *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleSinglePointShapeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleSinglePointShapeModule *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleRectShapeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleRectShapeModule *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleOverLifeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleOverLifeModule *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleOverlayOptions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleOverlayOptions *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAParticleOverlayOptionsFactory": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAParticleOverlayOptionsFactory *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOverlayRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAUserLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAUserLocation *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMultiPointItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMultiPointItem *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMultiPointOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMultiPointOverlay *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMACustomBuildingOverlayOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MACustomBuildingOverlayOption *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMACustomBuildingOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MACustomBuildingOverlay *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMATracePoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MATracePoint *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMATraceLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MATraceLocation *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAArc": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAArc *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAUserLocationRepresentation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAUserLocationRepresentation *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAMapView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAMapView *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAOverlayPathRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAOverlayPathRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMAGroundOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MAGroundOverlayRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"RefClass::asMACustomBuildingOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          // 引用对象
          NSInteger refId = [args[@"refId"] integerValue];
          id ref = HEAP[@(refId)];
      
          // 转型
          ref = (MACustomBuildingOverlayRenderer *) ref;
          // 放回HEAP
          HEAP[@(refId)] = ref;
      
          methodResult(@(refId));
      },
      
      @"ObjectFactory::createAMapURLSearch": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapURLSearch");
      
          AMapURLSearch* ref = [[AMapURLSearch alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapNaviConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapNaviConfig");
      
          AMapNaviConfig* ref = [[AMapNaviConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapRouteConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapRouteConfig");
      
          AMapRouteConfig* ref = [[AMapRouteConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapPOIConfig": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapPOIConfig");
      
          AMapPOIConfig* ref = [[AMapPOIConfig alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createAMapServices": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createAMapServices");
      
          AMapServices* ref = [[AMapServices alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOfflineCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOfflineCity");
      
          MAOfflineCity* ref = [[MAOfflineCity alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOfflineItemNationWide": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOfflineItemNationWide");
      
          MAOfflineItemNationWide* ref = [[MAOfflineItemNationWide alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMultiPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMultiPoint");
      
          MAMultiPoint* ref = [[MAMultiPoint alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAGroundOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAGroundOverlay");
      
          MAGroundOverlay* ref = [[MAGroundOverlay alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAPolygonRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAPolygonRenderer");
      
          MAPolygonRenderer* ref = [[MAPolygonRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAPinAnnotationView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAPinAnnotationView");
      
          MAPinAnnotationView* ref = [[MAPinAnnotationView alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAHeatMapNode": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAHeatMapNode");
      
          MAHeatMapNode* ref = [[MAHeatMapNode alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAHeatMapGradient": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAHeatMapGradient");
      
          MAHeatMapGradient* ref = [[MAHeatMapGradient alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAHeatMapTileOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAHeatMapTileOverlay");
      
          MAHeatMapTileOverlay* ref = [[MAHeatMapTileOverlay alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMapStatus": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMapStatus");
      
          MAMapStatus* ref = [[MAMapStatus alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAPointAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAPointAnnotation");
      
          MAPointAnnotation* ref = [[MAPointAnnotation alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMACircle": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACircle");
      
          MACircle* ref = [[MACircle alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAArcRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAArcRenderer");
      
          MAArcRenderer* ref = [[MAArcRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMapCustomStyleOptions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMapCustomStyleOptions");
      
          MAMapCustomStyleOptions* ref = [[MAMapCustomStyleOptions alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAPolygon": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAPolygon");
      
          MAPolygon* ref = [[MAPolygon alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleOverlay");
      
          MAParticleOverlay* ref = [[MAParticleOverlay alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAPolyline");
      
          MAPolyline* ref = [[MAPolyline alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMultiColoredPolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMultiColoredPolylineRenderer");
      
          MAMultiColoredPolylineRenderer* ref = [[MAMultiColoredPolylineRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAAnimatedAnnotation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAAnimatedAnnotation");
      
          MAAnimatedAnnotation* ref = [[MAAnimatedAnnotation alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMultiTexturePolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMultiTexturePolylineRenderer");
      
          MAMultiTexturePolylineRenderer* ref = [[MAMultiTexturePolylineRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOfflineProvince": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOfflineProvince");
      
          MAOfflineProvince* ref = [[MAOfflineProvince alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMATileOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMATileOverlayRenderer");
      
          MATileOverlayRenderer* ref = [[MATileOverlayRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOfflineItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOfflineItem");
      
          MAOfflineItem* ref = [[MAOfflineItem alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAGeodesicPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAGeodesicPolyline");
      
          MAGeodesicPolyline* ref = [[MAGeodesicPolyline alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMATouchPoi": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMATouchPoi");
      
          MATouchPoi* ref = [[MATouchPoi alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOfflineItemMunicipality": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOfflineItemMunicipality");
      
          MAOfflineItemMunicipality* ref = [[MAOfflineItemMunicipality alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMultiPolyline": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMultiPolyline");
      
          MAMultiPolyline* ref = [[MAMultiPolyline alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMATraceManager": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMATraceManager");
      
          MATraceManager* ref = [[MATraceManager alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMultiPointOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMultiPointOverlayRenderer");
      
          MAMultiPointOverlayRenderer* ref = [[MAMultiPointOverlayRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAIndoorFloorInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAIndoorFloorInfo");
      
          MAIndoorFloorInfo* ref = [[MAIndoorFloorInfo alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAIndoorInfo": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAIndoorInfo");
      
          MAIndoorInfo* ref = [[MAIndoorInfo alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAPolylineRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAPolylineRenderer");
      
          MAPolylineRenderer* ref = [[MAPolylineRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAAnnotationMoveAnimation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAAnnotationMoveAnimation");
      
          MAAnnotationMoveAnimation* ref = [[MAAnnotationMoveAnimation alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAShape": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAShape");
      
          MAShape* ref = [[MAShape alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAAnnotationView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAAnnotationView");
      
          MAAnnotationView* ref = [[MAAnnotationView alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMATileOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMATileOverlay");
      
          MATileOverlay* ref = [[MATileOverlay alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMATileOverlayPath": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMATileOverlayPath");
      
          MATileOverlayPath data;
      
          NSValue* dataValue = [NSValue value:&data withObjCType:@encode(MATileOverlayPath)];
          HEAP[@(dataValue.hash)] = dataValue;
      
          methodResult(@(dataValue.hash));
      },
      
      @"ObjectFactory::createMACustomCalloutView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACustomCalloutView");
      
          MACustomCalloutView* ref = [[MACustomCalloutView alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOfflineItemCommonCity": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOfflineItemCommonCity");
      
          MAOfflineItemCommonCity* ref = [[MAOfflineItemCommonCity alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOfflineMap": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOfflineMap");
      
          MAOfflineMap* ref = [[MAOfflineMap alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMACircleRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACircleRenderer");
      
          MACircleRenderer* ref = [[MACircleRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleOverlayRenderer");
      
          MAParticleOverlayRenderer* ref = [[MAParticleOverlayRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMACoordinateBounds": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACoordinateBounds");
      
          MACoordinateBounds data;
      
          NSValue* dataValue = [NSValue value:&data withObjCType:@encode(MACoordinateBounds)];
          HEAP[@(dataValue.hash)] = dataValue;
      
          methodResult(@(dataValue.hash));
      },
      
      @"ObjectFactory::createMACoordinateSpan": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACoordinateSpan");
      
          MACoordinateSpan data;
      
          NSValue* dataValue = [NSValue value:&data withObjCType:@encode(MACoordinateSpan)];
          HEAP[@(dataValue.hash)] = dataValue;
      
          methodResult(@(dataValue.hash));
      },
      
      @"ObjectFactory::createMACoordinateRegion": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACoordinateRegion");
      
          MACoordinateRegion data;
      
          NSValue* dataValue = [NSValue value:&data withObjCType:@encode(MACoordinateRegion)];
          HEAP[@(dataValue.hash)] = dataValue;
      
          methodResult(@(dataValue.hash));
      },
      
      @"ObjectFactory::createMAMapPoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMapPoint");
      
          MAMapPoint data;
      
          NSValue* dataValue = [NSValue value:&data withObjCType:@encode(MAMapPoint)];
          HEAP[@(dataValue.hash)] = dataValue;
      
          methodResult(@(dataValue.hash));
      },
      
      @"ObjectFactory::createMAMapSize": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMapSize");
      
          MAMapSize data;
      
          NSValue* dataValue = [NSValue value:&data withObjCType:@encode(MAMapSize)];
          HEAP[@(dataValue.hash)] = dataValue;
      
          methodResult(@(dataValue.hash));
      },
      
      @"ObjectFactory::createMAMapRect": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMapRect");
      
          MAMapRect data;
      
          NSValue* dataValue = [NSValue value:&data withObjCType:@encode(MAMapRect)];
          HEAP[@(dataValue.hash)] = dataValue;
      
          methodResult(@(dataValue.hash));
      },
      
      @"ObjectFactory::createMAParticleRandomVelocityGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleRandomVelocityGenerate");
      
          MAParticleRandomVelocityGenerate* ref = [[MAParticleRandomVelocityGenerate alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleRandomColorGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleRandomColorGenerate");
      
          MAParticleRandomColorGenerate* ref = [[MAParticleRandomColorGenerate alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleConstantRotationGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleConstantRotationGenerate");
      
          MAParticleConstantRotationGenerate* ref = [[MAParticleConstantRotationGenerate alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleCurveSizeGenerate": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleCurveSizeGenerate");
      
          MAParticleCurveSizeGenerate* ref = [[MAParticleCurveSizeGenerate alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleEmissionModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleEmissionModule");
      
          MAParticleEmissionModule* ref = [[MAParticleEmissionModule alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleSinglePointShapeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleSinglePointShapeModule");
      
          MAParticleSinglePointShapeModule* ref = [[MAParticleSinglePointShapeModule alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleRectShapeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleRectShapeModule");
      
          MAParticleRectShapeModule* ref = [[MAParticleRectShapeModule alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleOverLifeModule": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleOverLifeModule");
      
          MAParticleOverLifeModule* ref = [[MAParticleOverLifeModule alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleOverlayOptions": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleOverlayOptions");
      
          MAParticleOverlayOptions* ref = [[MAParticleOverlayOptions alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAParticleOverlayOptionsFactory": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAParticleOverlayOptionsFactory");
      
          MAParticleOverlayOptionsFactory* ref = [[MAParticleOverlayOptionsFactory alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOverlayRenderer");
      
          MAOverlayRenderer* ref = [[MAOverlayRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAUserLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAUserLocation");
      
          MAUserLocation* ref = [[MAUserLocation alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMultiPointItem": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMultiPointItem");
      
          MAMultiPointItem* ref = [[MAMultiPointItem alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMultiPointOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMultiPointOverlay");
      
          MAMultiPointOverlay* ref = [[MAMultiPointOverlay alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMACustomBuildingOverlayOption": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACustomBuildingOverlayOption");
      
          MACustomBuildingOverlayOption* ref = [[MACustomBuildingOverlayOption alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMACustomBuildingOverlay": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACustomBuildingOverlay");
      
          MACustomBuildingOverlay* ref = [[MACustomBuildingOverlay alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMATracePoint": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMATracePoint");
      
          MATracePoint* ref = [[MATracePoint alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMATraceLocation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMATraceLocation");
      
          MATraceLocation* ref = [[MATraceLocation alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAArc": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAArc");
      
          MAArc* ref = [[MAArc alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAUserLocationRepresentation": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAUserLocationRepresentation");
      
          MAUserLocationRepresentation* ref = [[MAUserLocationRepresentation alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAMapView": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAMapView");
      
          MAMapView* ref = [[MAMapView alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAOverlayPathRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAOverlayPathRenderer");
      
          MAOverlayPathRenderer* ref = [[MAOverlayPathRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMAGroundOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMAGroundOverlayRenderer");
      
          MAGroundOverlayRenderer* ref = [[MAGroundOverlayRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
      @"ObjectFactory::createMACustomBuildingOverlayRenderer": ^(NSObject <FlutterPluginRegistrar> * registrar, NSDictionary<NSString *, id> * args, FlutterResult methodResult) {
          NSLog(@"ObjectFactory::createMACustomBuildingOverlayRenderer");
      
          MACustomBuildingOverlayRenderer* ref = [[MACustomBuildingOverlayRenderer alloc] init];
          HEAP[@(ref.hash)] = ref;
      
          methodResult(@(ref.hash));
      },
      
    };
  }

  return self;
}

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
  // 引用Map
  HEAP = @{}.mutableCopy;

  FlutterMethodChannel *channel = [FlutterMethodChannel
      methodChannelWithName:@"me.yohom/amap_base_flutter"
            binaryMessenger:[registrar messenger]];

  [registrar addMethodCallDelegate:[[AmapBaseFlutterPlugin alloc] initWithFlutterPluginRegistrar:registrar]
                           channel:channel];

  // 注册View
  [registrar registerViewFactory: [[MAAnnotationViewFactory alloc] initWithRegistrar:registrar] withId: @"me.yohom/MAAnnotationView"];
  [registrar registerViewFactory: [[MACustomCalloutViewFactory alloc] initWithRegistrar:registrar] withId: @"me.yohom/MACustomCalloutView"];
  [registrar registerViewFactory: [[MAMapViewFactory alloc] initWithRegistrar:registrar] withId: @"me.yohom/MAMapView"];
}

// Method Handlers
- (void)handleMethodCall:(FlutterMethodCall *)methodCall result:(FlutterResult)methodResult {
  NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) [methodCall arguments];
  if ([@"ObjectFactory::release" isEqualToString:methodCall.method]) {
    [HEAP removeObjectForKey:(NSNumber *) args[@"refId"]];
    methodResult(@"success");
  } else if ([@"ObjectFactory::clearRefMap" isEqualToString:methodCall.method]) {
    [HEAP removeAllObjects];
    methodResult(@"success");
  } else if ([@"ObjectFactory::createCLLocationCoordinate2D" isEqualToString:methodCall.method]) {
    CLLocationDegrees latitude = [args[@"latitude"] doubleValue];
    CLLocationDegrees longitude = [args[@"longitude"] doubleValue];

    CLLocationCoordinate2D data = CLLocationCoordinate2DMake(latitude, longitude);

    NSValue* dataValue = [NSValue value:&data withObjCType:@encode(CLLocationCoordinate2D)];
    HEAP[@(dataValue.hash)] = dataValue;

    methodResult(@(dataValue.hash));
  } else {
    if (_handlerMap[methodCall.method] != nil) {
      _handlerMap[methodCall.method](_registrar, args, methodResult);
    } else {
      methodResult(FlutterMethodNotImplemented);
    }
  }
}

// 委托方法们
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


@end