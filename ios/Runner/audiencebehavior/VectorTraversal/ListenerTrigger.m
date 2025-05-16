#import "ListenerTrigger.h"
    
@interface ListenerTrigger ()

@end

@implementation ListenerTrigger

- (void) toMatrixPicker: (NSMutableDictionary *)smallFuture
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UIPickerView *asynchronousItem = [[UIPickerView alloc] initWithFrame:CGRectMake(106, 137, 244, 156)];
		[asynchronousItem layoutIfNeeded];
		asynchronousItem.frame = CGRectMake(274, 246, 15, 270);
		asynchronousItem.contentScaleFactor = 9.2;
		asynchronousItem.layer.borderColor = [UIColor colorWithRed:192/255.0 green:201/255.0 blue:11/255.0 alpha:1.0].CGColor;
		asynchronousItem.contentScaleFactor = 2.3;
		//NSLog(@"sets= bussiness2 gen_dic %@", bussiness2);
	});
}


@end
        