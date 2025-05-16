#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ChapterStateFlags : NSObject

@property (nonatomic) NSString * shouldTransitionLayout;

@property (nonatomic) int webLatency;

@property (nonatomic) NSString * drawerTransparency;

@property (nonatomic) NSMutableArray * discardedSlash;

+ (instancetype) chapterStateFlagsWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) componentSaturation;

- (NSMutableDictionary *) spriteinsystem;

- (int) resilientState;

- (NSMutableSet *) shouldpersistbehavior;

- (NSMutableArray *) shapeSpeed;

@end

NS_ASSUME_NONNULL_END
        