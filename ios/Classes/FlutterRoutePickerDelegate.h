#import <Foundation/Foundation.h>
#import <AVKit/AVKit.h>
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlutterRoutePickerDelegate : NSObject <AVRoutePickerViewDelegate>

- (instancetype)initWithViewId:(int64_t)viewId messenger:(NSObject<FlutterBinaryMessenger> *)messenger;

@end

NS_ASSUME_NONNULL_END
