#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WidgetReference : NSObject

@property (nonatomic) int equalizationDuration;

@property (nonatomic) int sustainableLatency;

@property (nonatomic) NSString * multispritedelay;

@property (nonatomic) int commonLifecycle;

+ (instancetype) widgetReferenceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) canUnmountCollection;

- (NSMutableDictionary *) canDismissBinary;

- (int) shouldDismissScaffold;

- (NSMutableSet *) elasticFilter;

- (NSMutableArray *) shouldPrepareButton;

@end

NS_ASSUME_NONNULL_END
        