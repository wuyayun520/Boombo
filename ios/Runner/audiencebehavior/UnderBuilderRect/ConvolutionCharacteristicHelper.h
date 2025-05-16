#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ConvolutionCharacteristicHelper : NSObject

@property (nonatomic) NSString * responsiveColumn;

@property (nonatomic) NSMutableSet * layerSpeed;

@property (nonatomic) NSMutableArray * displayableTrigger;

+ (instancetype) convolutioncharacteristicHelperWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) associateEvent;

- (NSMutableDictionary *) usecaseFrequency;

- (int) lastService;

- (NSMutableSet *) shouldFetchBorder;

- (NSMutableArray *) selectedgrayscale;

@end

NS_ASSUME_NONNULL_END
        