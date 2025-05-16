#import "CreatorImplement.h"
    
@interface CreatorImplement ()

@end

@implementation CreatorImplement

- (void) holdLostReduction
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int prevTrajectory = 56;
		UIActivityIndicatorView *intensityTop = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
		intensityTop.hidesWhenStopped = YES;
		[intensityTop setFrame:CGRectMake(prevTrajectory, 168, 254, 74)];
		if (intensityTop.animating) {
			[intensityTop stopAnimating];
			[intensityTop setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleMedium];
			[intensityTop setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
			[intensityTop setFrame:CGRectMake(94, 50, 44, 38)];
		}
		//NSLog(@"sets= bussiness4 gen_int %@", bussiness4);
	});
}


@end
        