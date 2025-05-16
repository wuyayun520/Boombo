#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ValidateProtocolAdapter : NSObject

@property (nonatomic) NSMutableDictionary * lossRotation;

@property (nonatomic) NSMutableSet * shouldStartMaster;

+ (instancetype) validateProtocolAdapterWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) interactorParam;

- (NSMutableDictionary *) normalCompleter;

- (int) binderTag;

- (NSMutableSet *) canKeepTabView;

- (NSMutableArray *) canRebuildExtension;

@end

NS_ASSUME_NONNULL_END
        