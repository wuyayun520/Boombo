#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AnchorDetectorProtocol : NSObject

@property (nonatomic) int segueDuration;

@property (nonatomic) NSMutableArray * lostascent;

@property (nonatomic) NSMutableSet * shouldNotifyInstruction;

+ (instancetype) anchorDetectorProtocolWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canEmitNavigator;

- (NSMutableDictionary *) canPaintScreen;

- (int) prismatictolerance;

- (NSMutableSet *) localResponder;

- (NSMutableArray *) variantRate;

@end

NS_ASSUME_NONNULL_END
        