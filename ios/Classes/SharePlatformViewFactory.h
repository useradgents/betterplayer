// SharePlatformViewFactory.h
#import <Flutter/Flutter.h>

NS_ASSUME_NONNULL_BEGIN

@interface SharePlatformViewFactory : NSObject <FlutterPlatformViewFactory>
- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger> *)messenger;
@end

NS_ASSUME_NONNULL_END
