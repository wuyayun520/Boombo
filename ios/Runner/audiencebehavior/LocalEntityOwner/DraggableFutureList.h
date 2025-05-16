#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DraggableFutureList : NSObject

@property (nonatomic) NSString * dedicatedConsumption;

@property (nonatomic) NSMutableArray * shouldPauseDecoration;

+ (instancetype) draggableFutureListWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) instructionStatus;

- (NSMutableDictionary *) canStartPositioned;

- (int) showCustomPaint;

- (NSMutableSet *) materialBrush;

- (NSMutableArray *) liteCustomPaint;

@end

NS_ASSUME_NONNULL_END
        