#import "MultiplicationPresenter.h"
    
@interface MultiplicationPresenter ()

@end

@implementation MultiplicationPresenter

- (void) yieldNumericalGraph: (NSString *)consumptionPressure
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISegmentedControl *lifecyclevisibility = [[UISegmentedControl alloc] init];
		[lifecyclevisibility insertSegmentWithTitle:consumptionPressure atIndex:0 animated:YES];
		lifecyclevisibility.selected = NO;
		lifecyclevisibility.enabled = YES;
		UITextView *invokeException = [[UITextView alloc] initWithFrame:CGRectMake(43, 87, 104, 248)];
		invokeException.backgroundColor = [UIColor colorWithRed:109/255.0 green:58/255.0 blue:50/255.0 alpha:0.164706];
		invokeException.textColor = [UIColor colorWithRed:90/255.0 green:182/255.0 blue:199/255.0 alpha:0.745098];
		invokeException.font = [UIFont fontWithName:@"Garamond" size:28];
		invokeException.font = [UIFont fontWithName:@"Verdana" size:24];
		invokeException.textAlignment = NSTextAlignmentJustified;
		invokeException.contentOffset = CGPointMake(52, 22);
		invokeException.contentInset = UIEdgeInsetsMake(85, 79, 85, 79);
		//NSLog(@"sets= bussiness5 gen_str %@", bussiness5);
	});
}


@end
        