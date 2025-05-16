#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StateAscentProtocol : NSObject

@property (nonatomic) NSMutableSet * startstate;

+ (instancetype) stateAscentProtocolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) managerPhase;

- (NSMutableDictionary *) mendTag;

- (int) chartvaluemargin;

- (NSMutableSet *) ignoredMapper;

- (NSMutableArray *) transitionPosition;

@end

NS_ASSUME_NONNULL_END
        