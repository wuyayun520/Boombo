#import "TweakSingletonInterval.h"
    
@interface TweakSingletonInterval ()

@end

@implementation TweakSingletonInterval

- (void) showOntoScreenTask
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableArray *canLoadTabView = [NSMutableArray array];
		for (int i = 6; i != 0; --i) {
			[canLoadTabView addObject:[NSString stringWithFormat:@"sequentialScroller%d", i]];
		}
		UILabel *shouldStartDecoration = [[UILabel alloc] init];
		shouldStartDecoration.center = CGPointMake(413, 489);
		//NSLog(@"sets= bussiness5 gen_arr %@", bussiness5);
	});
}


@end
        