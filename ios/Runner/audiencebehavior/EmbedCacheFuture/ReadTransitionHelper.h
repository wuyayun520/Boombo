#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ReadTransitionHelper : NSObject

@property (nonatomic) NSMutableSet * shouldYieldMovement;

@property (nonatomic) NSMutableSet * reactiveOverlay;

@property (nonatomic) NSString * shouldStopWorkflow;

@property (nonatomic) int disabledIcon;

+ (instancetype) readTransitionHelperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) activatedRect;

- (NSMutableDictionary *) gateFormat;

- (int) mediumGate;

- (NSMutableSet *) shouldEndSpot;

- (NSMutableArray *) loaderAcceleration;

@end

NS_ASSUME_NONNULL_END
        