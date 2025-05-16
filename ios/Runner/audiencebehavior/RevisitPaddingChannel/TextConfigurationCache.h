#import "HierarchicalStreamSingleton.h"
#import "SustainableSceneFactory.h"
#import "UnregisterHeapHash.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TextConfigurationCache : NSObject


- (void) decoupleScreenExceptIntensity;

- (void) keepRequiredReferenceBuffer;

@end

NS_ASSUME_NONNULL_END
        