#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PersistReductionTransformer : NSObject

@property (nonatomic) NSMutableArray * nibShape;

@property (nonatomic) NSMutableArray * mainNode;

@property (nonatomic) NSMutableSet * spriteorkind;

+ (instancetype) persistReductionTransformerWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) adaptiveTweak;

- (NSMutableDictionary *) allocateNode;

- (int) detailOffset;

- (NSMutableSet *) temporaryProcessor;

- (NSMutableArray *) parallelScaffold;

@end

NS_ASSUME_NONNULL_END
        