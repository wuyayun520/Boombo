#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ComponentBase : NSObject

@property (nonatomic) int actionHead;

+ (instancetype) componentBaseWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) startCanvas;

- (NSMutableDictionary *) eagerDrawer;

- (int) renderCupertino;

- (NSMutableSet *) canBindCustomPaint;

- (NSMutableArray *) shouldDispatchPainter;

@end

NS_ASSUME_NONNULL_END
        