#import "WebStatefulPool.h"
    
@interface WebStatefulPool ()

@end

@implementation WebStatefulPool

- (void) dispatchSlashRoute: (NSString *)thresholdVisible
{
	dispatch_async(dispatch_get_main_queue(), ^{
		CALayer * measureStore = [[CALayer alloc] init];
		measureStore.name = thresholdVisible;
		measureStore.bounds = CGRectMake(122, 366, 997, 48);
		measureStore.backgroundColor = [UIColor grayColor].CGColor;
		measureStore.position = CGPointZero;
		measureStore.borderColor = [UIColor greenColor].CGColor;
		measureStore.borderWidth = 997;
		measureStore.masksToBounds = YES;
		CATransition *canPresentSlash = [CATransition animation];
		canPresentSlash.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
		canPresentSlash.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
		canPresentSlash.type = kCATransitionPush;
		//NSLog(@"sets= business16 gen_str %@", business16);
	});
}


@end
        