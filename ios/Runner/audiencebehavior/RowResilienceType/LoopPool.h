#import "UniformLocalizationCache.h"
#import "AlertAnalyzer.h"
#import "PositionProcessorList.h"
#import "InjectSkirtHelper.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoopPool : NSObject


- (void) injectDependency;

- (void) updateVisitInExpanded;

@end

NS_ASSUME_NONNULL_END
        