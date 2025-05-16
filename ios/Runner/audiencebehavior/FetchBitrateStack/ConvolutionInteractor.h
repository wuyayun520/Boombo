#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConvolutionInteractor : NSObject

@property (nonatomic) NSMutableArray * activeNavigation;

@property (nonatomic) int temporaryTicker;

+ (instancetype) convolutionInteractorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) storageDepth;

- (NSMutableDictionary *) joinerFeedback;

- (int) directlyLog;

- (NSMutableSet *) shouldEmitEffect;

- (NSMutableArray *) greatReducer;

@end

NS_ASSUME_NONNULL_END
        