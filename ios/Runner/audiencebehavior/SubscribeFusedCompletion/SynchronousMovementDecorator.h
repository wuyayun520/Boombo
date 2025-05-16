#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SynchronousMovementDecorator : NSObject

@property (nonatomic) NSString * modulusCenter;

@property (nonatomic) NSMutableSet * vertexFlags;

@property (nonatomic) NSMutableDictionary * shouldPushInkWell;

+ (instancetype) synchronousMovementDecoratorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) generateRouter;

- (NSMutableDictionary *) skinValue;

- (int) masterSize;

- (NSMutableSet *) heroPosition;

- (NSMutableArray *) pinchableDependency;

@end

NS_ASSUME_NONNULL_END
        