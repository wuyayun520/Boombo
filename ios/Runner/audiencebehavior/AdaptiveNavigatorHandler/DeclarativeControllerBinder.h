#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeclarativeControllerBinder : NSObject

@property (nonatomic) NSMutableArray * iterativeSubscriber;

+ (instancetype) declarativeControllerBinderWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) backwardDialogs;

- (NSMutableDictionary *) overlayAction;

- (int) canRouteTouch;

- (NSMutableSet *) detachDrawer;

- (NSMutableArray *) cellDepth;

@end

NS_ASSUME_NONNULL_END
        