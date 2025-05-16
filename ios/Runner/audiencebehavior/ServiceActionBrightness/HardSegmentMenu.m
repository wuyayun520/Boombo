#import "HardSegmentMenu.h"
    
@interface HardSegmentMenu ()

@end

@implementation HardSegmentMenu

- (void) presentResourceSinceCharacteristic: (int)unactivatedPager
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int shouldTrainGradient[unactivatedPager];
		for (int i = 0; i < unactivatedPager; i++) {
			shouldTrainGradient[i] = i * 4;
		}
		int keepgraph = (int)(sizeof(shouldTrainGradient) / sizeof(int));
		for (int i = 0; i < keepgraph/2; i++) {
			shouldTrainGradient[keepgraph - i - 1] = 3;
		}
		UIView *independentMusic = [[UIView alloc] init];
		independentMusic.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
		independentMusic.clearsContextBeforeDrawing = YES;
		//NSLog(@"Business17 gen_int executed%@", Business17);
	});
}


@end
        