#import "EqualizationBase.h"
    
@interface EqualizationBase ()

@end

@implementation EqualizationBase

- (void) activateDiscardedLayer
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableSet *canPauseGram = [NSMutableSet set];
		for (int i = 4; i != 0; --i) {
			[canPauseGram addObject:[NSString stringWithFormat:@"shouldHandleMovement%d", i]];
		}
		NSInteger canCacheSpecifier =  [canPauseGram count];
		UISegmentedControl *masterRight = [[UISegmentedControl alloc] init];
		__block NSInteger propagateAlignment = 0;
		[canPauseGram enumerateObjectsUsingBlock:^(id  _Nonnull animateprovider, BOOL * _Nonnull stop) {
		    if (propagateAlignment < 5) {
		        [masterRight insertSegmentWithTitle:[animateprovider description] atIndex:propagateAlignment animated:NO];
		        propagateAlignment++;
		    } else {
		        *stop = YES;
		    }
		}];
		[masterRight setSelectedSegmentIndex:0];
		[masterRight setTintColor:[UIColor grayColor]];
		UIAlertController *findTopic = [UIAlertController alertControllerWithTitle:@"Set Operations" message:[NSString stringWithFormat:@"Set contains %lu items", (unsigned long)canCacheSpecifier] preferredStyle:UIAlertControllerStyleAlert];
		UIAlertAction *mediumDelegate = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
		[findTopic addAction:mediumDelegate];
		if (canCacheSpecifier > 3) {
			// 当集合元素较多时，添加额外的操作按钮
			UIAlertAction *extraAction = [UIAlertAction actionWithTitle:@"Process Set" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
			    // 处理集合的代码
			    NSLog(@"Processing set with %lu items", (unsigned long)canCacheSpecifier);
			}];
			[findTopic addAction:extraAction];
		}
		//NSLog(@"Business18 gen_set with size: %lu%@", (unsigned long)canCacheSpecifier);
	});
}


@end
        