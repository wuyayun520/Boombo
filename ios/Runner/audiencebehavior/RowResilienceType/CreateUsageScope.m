#import "CreateUsageScope.h"
    
@interface CreateUsageScope ()

@end

@implementation CreateUsageScope

- (instancetype) init
{
	NSNotificationCenter *revisitTitle = [NSNotificationCenter defaultCenter];
	[revisitTitle addObserver:self selector:@selector(firstDistinction:) name:UIKeyboardDidShowNotification object:nil];
	return self;
}

- (void) captureDelicateResult: (NSMutableSet *)accordionError
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISlider *refreshRow = [[UISlider alloc] init];
		refreshRow.enabled = YES;
		//NSLog(@"sets= bussiness1 gen_set %@", bussiness1);
	});
}

- (void) firstDistinction: (NSNotification *)usageStructure
{
	//NSLog(@"userInfo=%@", [usageStructure userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        