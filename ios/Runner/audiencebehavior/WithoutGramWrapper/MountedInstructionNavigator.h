#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MountedInstructionNavigator : NSObject

@property (nonatomic) NSString * ignoredPopup;

+ (instancetype) mountedInstructionNavigatorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) maxTabBar;

- (NSMutableDictionary *) executeError;

- (int) shouldResumeSpecifier;

- (NSMutableSet *) shouldEndButton;

- (NSMutableArray *) discardedFlex;

@end

NS_ASSUME_NONNULL_END
        