#import "WriteCardMaterial.h"
    
@interface WriteCardMaterial ()

@end

@implementation WriteCardMaterial

- (void) buildFindToTable
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int shouldformatbullet = 51;
		int boxEdge = 81;
		for (int i = 0; i < shouldformatbullet; i++) {
			boxEdge += i;
		}
		CATransition *slashcolor = [CATransition animation];
		slashcolor.subtype = kCATransitionFromTop;
		//NSLog(@"sets= bussiness1 gen_int %@", bussiness1);
	});
}


@end
        