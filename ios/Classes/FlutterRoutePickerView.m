#import "FlutterRoutePickerView.h"
#import "FlutterRoutePickerDelegate.h" // Assurez-vous que cette classe est définie

@implementation FlutterRoutePickerView {
    UIView *_view;
    id<AVRoutePickerViewDelegate> _delegate;
}

- (instancetype)initWithMessenger:(id<FlutterBinaryMessenger>)messenger
                           viewId:(int64_t)viewId
                        arguments:(NSDictionary *)arguments {
    self = [super init];
    if (self) {
        AVRoutePickerView *tempView = [[AVRoutePickerView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        if (arguments[@"tintColor"]) {
            tempView.tintColor = [FlutterRoutePickerView mapToColor:arguments[@"tintColor"]];
        }
        if (arguments[@"activeTintColor"]) {
            tempView.activeTintColor = [FlutterRoutePickerView mapToColor:arguments[@"activeTintColor"]];
        }
        if (arguments[@"backgroundColor"]) {
            tempView.backgroundColor = [FlutterRoutePickerView mapToColor:arguments[@"backgroundColor"]];
        }
        if (@available(iOS 13.0, *)) {
            tempView.prioritizesVideoDevices = [arguments[@"prioritizesVideoDevices"] boolValue];
        }
        _delegate = [[FlutterRoutePickerDelegate alloc] initWithViewId:viewId messenger:messenger];
        tempView.delegate = _delegate;
        _view = tempView;
    }
    return self;
}

- (UIView *)view {
    return _view;
}

+ (UIColor *)mapToColor:(NSDictionary *)map {
    CGFloat red = [map[@"red"] floatValue] / 255.0;
    CGFloat green = [map[@"green"] floatValue] / 255.0;
    CGFloat blue = [map[@"blue"] floatValue] / 255.0;
    CGFloat alpha = [map[@"alpha"] floatValue] / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
