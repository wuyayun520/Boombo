#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RapidTouchFormat : NSObject

@property (nonatomic) NSMutableDictionary * opaqueChapter;

@property (nonatomic) NSString * skinTail;

@property (nonatomic) int grayscaleDensity;

@property (nonatomic) int mediumconsumption;

+ (instancetype) rapidTouchFormatWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) keepChannels;

- (NSMutableDictionary *) tappableSegue;

- (int) isSlider;

- (NSMutableSet *) similarMenu;

- (NSMutableArray *) shouldProcessGraphic;

@end

NS_ASSUME_NONNULL_END
        