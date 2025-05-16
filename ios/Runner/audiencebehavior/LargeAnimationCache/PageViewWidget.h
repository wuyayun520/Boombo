#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PageViewWidget : NSObject

@property (nonatomic) int reusableGift;

@property (nonatomic) NSMutableSet * tableTheme;

+ (instancetype) pageViewWidgetWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) shouldTransitionSubpixel;

- (NSMutableDictionary *) prismaticListener;

- (int) storeParam;

- (NSMutableSet *) navigateCollection;

- (NSMutableArray *) pointCenter;

@end

NS_ASSUME_NONNULL_END
        