#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TernaryShaderAdapter : NSObject

@property (nonatomic) NSMutableDictionary * keyWrapper;

@property (nonatomic) NSMutableSet * nextNotifier;

@property (nonatomic) NSString * previewInteraction;

@property (nonatomic) NSString * techniquedelegate;

+ (instancetype) ternaryShaderAdapterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canCacheSignature;

- (NSMutableDictionary *) canAttachTransition;

- (int) deployOffset;

- (NSMutableSet *) emitqueue;

- (NSMutableArray *) inheritedEffect;

@end

NS_ASSUME_NONNULL_END
        