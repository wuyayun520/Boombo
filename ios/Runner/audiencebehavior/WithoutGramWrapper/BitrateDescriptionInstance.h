#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BitrateDescriptionInstance : NSObject

@property (nonatomic) NSMutableArray * statefulStatus;

+ (instancetype) bitrateDescriptionInstanceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldReplaceText;

- (NSMutableDictionary *) tappableContainer;

- (int) canTrainFlex;

- (NSMutableSet *) canCreateMovement;

- (NSMutableArray *) usedController;

@end

NS_ASSUME_NONNULL_END
        