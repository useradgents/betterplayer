// SharePlatformViewFactory.m
#import "SharePlatformViewFactory.h"
#import "FlutterRoutePickerView.h"

@implementation SharePlatformViewFactory {
    NSObject<FlutterBinaryMessenger> *_messenger;
}

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger> *)messenger {
    self = [super init];
    if (self) {
        _messenger = messenger;
    }
    return self;
}

- (NSObject<FlutterMessageCodec> *)createArgsCodec {
    return [FlutterStandardMessageCodec sharedInstance];
}

- (NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame
                                    viewIdentifier:(int64_t)viewId
                                         arguments:(id _Nullable)args 
{
    return [[FlutterRoutePickerView alloc] initWithMessenger:_messenger viewId:viewId arguments:args];
}

@end
