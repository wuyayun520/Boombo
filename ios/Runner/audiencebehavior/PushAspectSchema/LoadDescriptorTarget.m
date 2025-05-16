#import "LoadDescriptorTarget.h"
    
@interface LoadDescriptorTarget ()

@end

@implementation LoadDescriptorTarget

- (void) beforeRadioRenderer: (int)opaquesine
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int setupError = 428;
		for (int i = 0; i < opaquesine; i++) {
			setupError += i;
		}
		UIActivityIndicatorView *unregisterFactory = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleLarge];
		[unregisterFactory setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
		unregisterFactory.color = UIColor.brownColor;
		[unregisterFactory setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleLarge];
		//NSLog(@"sets= bussiness1 gen_int %@", bussiness1);
	});
}


@end
        