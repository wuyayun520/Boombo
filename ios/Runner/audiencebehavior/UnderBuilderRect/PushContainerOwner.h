#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PushContainerOwner : NSObject

@property (nonatomic) NSString * navigationTag;

@property (nonatomic) int boxInset;

@property (nonatomic) NSMutableArray * clipperInset;

+ (instancetype) pushContainerOwnerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldPrepareCard;

- (NSMutableDictionary *) finishsingleton;

- (int) canDisposeCapacities;

- (NSMutableSet *) animatorpressure;

- (NSMutableArray *) equipmentScale;

@end

NS_ASSUME_NONNULL_END
        