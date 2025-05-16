#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BackwardCharacterGrid : NSObject

@property (nonatomic) NSMutableSet * shouldFinishStateful;

@property (nonatomic) NSMutableDictionary * compositionalColumn;

@property (nonatomic) int titleShade;

+ (instancetype) backwardCharacterGridWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) stopFragment;

- (NSMutableDictionary *) greatSorter;

- (int) enabledScope;

- (NSMutableSet *) opaqueEntity;

- (NSMutableArray *) normForce;

@end

NS_ASSUME_NONNULL_END
        