#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SymbolWidgetPool : NSObject

@property (nonatomic) NSMutableDictionary * characterVisibility;

@property (nonatomic) NSMutableDictionary * spriteFlags;

@property (nonatomic) NSMutableSet * sizeMode;

+ (instancetype) symbolWidgetPoolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) toolaboutstage;

- (NSMutableDictionary *) deserializeEqualization;

- (int) alertagainstaction;

- (NSMutableSet *) scrollableJoiner;

- (NSMutableArray *) canLoadProject;

@end

NS_ASSUME_NONNULL_END
        