#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TransformerSelectorBase : NSObject

@property (nonatomic) int publicchooser;

@property (nonatomic) int ternarytop;

@property (nonatomic) NSMutableArray * blocperlayer;

+ (instancetype) transformerSelectorBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canSerializeSemantics;

- (NSMutableDictionary *) originalMethod;

- (int) euclideanPrecision;

- (NSMutableSet *) disabledCompleter;

- (NSMutableArray *) stackNumber;

@end

NS_ASSUME_NONNULL_END
        