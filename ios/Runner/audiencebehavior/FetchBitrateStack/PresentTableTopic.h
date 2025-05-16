#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PresentTableTopic : NSObject

@property (nonatomic) NSMutableSet * prevDispatcher;

+ (instancetype) presentTableTopicWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) keyInfo;

- (NSMutableDictionary *) managerVisibility;

- (int) shouldRouteBullet;

- (NSMutableSet *) fragmentresponse;

- (NSMutableArray *) formatExpanded;

@end

NS_ASSUME_NONNULL_END
        