#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NavigationBloc : NSObject

@property (nonatomic) int euclideanAscent;

+ (instancetype) navigationBlocWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) divideResolver;

- (NSMutableDictionary *) transitionConstraint;

- (int) sessionVar;

- (NSMutableSet *) canPersistMovement;

- (NSMutableArray *) granularStack;

@end

NS_ASSUME_NONNULL_END
        