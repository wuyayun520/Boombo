#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseCache : NSObject

@property (nonatomic) int eagerprovision;

@property (nonatomic) NSMutableDictionary * navigatorHead;

@property (nonatomic) int skinMargin;

@property (nonatomic) int discardedChapter;

+ (instancetype) baseCacheWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canPushDocument;

- (NSMutableDictionary *) canObserveTable;

- (int) dismissReference;

- (NSMutableSet *) routeMaterial;

- (NSMutableArray *) mountedStamp;

@end

NS_ASSUME_NONNULL_END
        