#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface IgnoredCurveList : NSObject

@property (nonatomic) NSMutableArray * captionconfiguration;

@property (nonatomic) NSMutableArray * combinemetadata;

+ (instancetype) ignoredCurveListWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) entityShape;

- (NSMutableDictionary *) drawerPrototype;

- (int) routeCoord;

- (NSMutableSet *) canSaveSpot;

- (NSMutableArray *) processpopup;

@end

NS_ASSUME_NONNULL_END
        