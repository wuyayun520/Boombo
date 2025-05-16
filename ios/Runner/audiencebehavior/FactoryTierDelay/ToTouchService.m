#import "ToTouchService.h"
    
@interface ToTouchService ()

@end

@implementation ToTouchService

- (void) startAnimateByDuration
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int canvaswithoperation = 78;
		int cellappearance = 13;
		for (int i = 0; i < canvaswithoperation; i++) {
			cellappearance += i;
		}
		UITextView *lastAmortization = [[UITextView alloc] initWithFrame:CGRectMake(11, 74, 161, 199)];
		lastAmortization.font = [UIFont fontWithName:@"Courier New" size:15];
		lastAmortization.textColor = [UIColor colorWithRed:193/255.0 green:233/255.0 blue:150/255.0 alpha:0.886275];
		lastAmortization.font = [UIFont fontWithName:@"Symbol" size:28];
		lastAmortization.textAlignment = NSTextAlignmentLeft;
		lastAmortization.font = [UIFont fontWithName:@"Helvetica" size:39];
		lastAmortization.contentOffset = CGPointMake(76, 41);
		lastAmortization.textColor = [UIColor colorWithRed:41/255.0 green:3/255.0 blue:155/255.0 alpha:0.474510];
		//NSLog(@"sets= bussiness1 gen_int %@", bussiness1);
	});
}


@end
        