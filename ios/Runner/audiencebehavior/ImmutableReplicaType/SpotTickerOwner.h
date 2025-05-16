#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SpotTickerOwner : NSObject

@property (nonatomic) NSString * mediumTangent;

+ (instancetype) spotTickerOwnerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canDeserializeMovement;

- (NSMutableDictionary *) concreteInteractor;

- (int) providerTheme;

- (NSMutableSet *) searchAllocator;

- (NSMutableArray *) shouldSerializeAppBar;

@end

NS_ASSUME_NONNULL_END
        