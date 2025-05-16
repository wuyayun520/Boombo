#import "AppBarBase.h"
    
@interface AppBarBase ()

@end

@implementation AppBarBase

- (void) dissociateChooser
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSString *collectionName = @"bindRoute";
		CALayer * shouldFetchGesture = [[CALayer alloc] init];
		shouldFetchGesture.name = collectionName;
		CATransition *activefactory = [CATransition animation];
		activefactory.type = kCATransitionReveal;
		shouldFetchGesture.backgroundColor = [UIColor cyanColor].CGColor;
		shouldFetchGesture.bounds = CGRectMake(461, 358, 669, 667);
		shouldFetchGesture.position = CGPointZero;
		//NSLog(@"sets= bussiness8 gen_str %@", bussiness8);
	});
}


@end
        