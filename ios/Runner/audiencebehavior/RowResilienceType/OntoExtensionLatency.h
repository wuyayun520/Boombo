#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OntoExtensionLatency : NSObject

@property (nonatomic) NSString * originalFilter;

@property (nonatomic) NSString * deferredExpanded;

+ (instancetype) ontoExtensionLatencyWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) updateComposition;

- (NSMutableDictionary *) canMountCupertino;

- (int) shouldYieldFlex;

- (NSMutableSet *) eventVisibility;

- (NSMutableArray *) shouldPushInstruction;

@end

NS_ASSUME_NONNULL_END
        