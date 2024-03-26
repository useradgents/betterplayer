#import "FlutterRoutePickerDelegate.h"

@interface FlutterRoutePickerDelegate ()

@property (nonatomic, strong) FlutterMethodChannel *methodChannel;

@end

@implementation FlutterRoutePickerDelegate

- (instancetype)initWithViewId:(int64_t)viewId messenger:(NSObject<FlutterBinaryMessenger> *)messenger {
    self = [super init];
    if (self) {
        NSString *channelName = [NSString stringWithFormat:@"flutter_to_airplay#%lld", viewId];
        _methodChannel = [FlutterMethodChannel methodChannelWithName:channelName binaryMessenger:messenger];
    }
    return self;
}

- (void)routePickerViewWillBeginPresentingRoutes:(AVRoutePickerView *)routePickerView {
    [self.methodChannel invokeMethod:@"onShowPickerView" arguments:nil];
}

- (void)routePickerViewDidEndPresentingRoutes:(AVRoutePickerView *)routePickerView {
    [self.methodChannel invokeMethod:@"onClosePickerView" arguments:nil];
}

@end
