#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FlutterRoutePickerView : NSObject <FlutterPlatformView>
- (instancetype)initWithMessenger:(id<FlutterBinaryMessenger>)messenger
                           viewId:(int64_t)viewId
                        arguments:(NSDictionary *)arguments;
@end

NS_ASSUME_NONNULL_END
