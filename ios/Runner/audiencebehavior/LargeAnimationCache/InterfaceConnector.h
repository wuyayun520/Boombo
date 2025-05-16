#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InterfaceConnector : NSObject

@property (nonatomic) NSMutableArray * shouldFetchPlate;

+ (instancetype) interfaceConnectorWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) clipperOperation;

- (NSMutableDictionary *) frameRotation;

- (int) dependencyActivity;

- (NSMutableSet *) expandedOffset;

- (NSMutableArray *) shouldLoadPadding;

@end

NS_ASSUME_NONNULL_END
        