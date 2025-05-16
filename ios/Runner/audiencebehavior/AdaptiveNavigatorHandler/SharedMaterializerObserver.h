#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SharedMaterializerObserver : NSObject

@property (nonatomic) NSMutableArray * collectionTint;

@property (nonatomic) NSMutableDictionary * prevSegue;

@property (nonatomic) NSMutableDictionary * requiredMaster;

@property (nonatomic) NSString * chapterorscope;

+ (instancetype) sharedMaterializerObserverWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canTransitionChannels;

- (NSMutableDictionary *) shouldLayoutCurve;

- (int) canPauseScreen;

- (NSMutableSet *) activesubpixelscale;

- (NSMutableArray *) heroTop;

@end

NS_ASSUME_NONNULL_END
        