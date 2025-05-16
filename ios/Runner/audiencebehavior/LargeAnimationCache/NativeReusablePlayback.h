#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NativeReusablePlayback : NSObject

@property (nonatomic) NSString * fragmentsAlignment;

@property (nonatomic) NSMutableDictionary * playbackIndex;

@property (nonatomic) NSMutableArray * cancelqueue;

+ (instancetype) nativeReusablePlaybackWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) synchronousScale;

- (NSMutableDictionary *) oldScroller;

- (int) cubitlatency;

- (NSMutableSet *) webSubscriber;

- (NSMutableArray *) errorindex;

@end

NS_ASSUME_NONNULL_END
        