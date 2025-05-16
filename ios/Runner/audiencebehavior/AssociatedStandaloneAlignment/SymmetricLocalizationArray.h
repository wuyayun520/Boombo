#import "TangentJoiner.h"
#import "SwiftTrajectory.h"
#import "DeprecatePointOperation.h"
#import "UtilHelper.h"
#import "BuildBaselineImpression.h"
#import "ExtensionSlider.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SymmetricLocalizationArray : NSObject


- (void) analyzeMutableMovement;

- (void) saveComposableCoordinator;

@end

NS_ASSUME_NONNULL_END
        