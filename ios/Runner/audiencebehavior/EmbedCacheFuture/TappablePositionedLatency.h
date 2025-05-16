#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TappablePositionedLatency : NSObject

@property (nonatomic) int resilientVolume;

@property (nonatomic) int labelfilter;

@property (nonatomic) int tappableSymbol;

@property (nonatomic) NSMutableDictionary * scenarioMode;

+ (instancetype) tappablePositionedLatencyWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) gradientOffset;

- (NSMutableDictionary *) dynamicGrid;

- (int) canFetchPadding;

- (NSMutableSet *) layerComposite;

- (NSMutableArray *) firstInformation;

@end

NS_ASSUME_NONNULL_END
        