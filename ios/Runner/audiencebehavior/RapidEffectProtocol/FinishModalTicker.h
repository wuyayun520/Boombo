#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FinishModalTicker : NSObject

@property (nonatomic) NSMutableArray * materialTransparency;

@property (nonatomic) int ternaryrow;

+ (instancetype) finishModalTickerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) playParticle;

- (NSMutableDictionary *) fillscene;

- (int) clearTicker;

- (NSMutableSet *) rowEdge;

- (NSMutableArray *) shouldFormatStep;

@end

NS_ASSUME_NONNULL_END
        