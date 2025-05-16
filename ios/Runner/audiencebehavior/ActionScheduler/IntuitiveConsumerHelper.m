#import "IntuitiveConsumerHelper.h"
    
@interface IntuitiveConsumerHelper ()

@end

@implementation IntuitiveConsumerHelper

- (void) visualizeGemPerResource: (NSString *)usedAnchor
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSMutableDictionary *equipmentChain = [NSMutableDictionary dictionary];
		equipmentChain[@"None"] = [UIFont fontWithName:@"STHeitiK-Medium" size:31];;
		equipmentChain[@"None"] = [UIColor colorNamed:@"blueColor"];;
		[usedAnchor drawAtPoint:CGPointZero withAttributes:equipmentChain];
		CABasicAnimation *coordinatorversusmediator = [CABasicAnimation animationWithKeyPath:@"stackAction"];
		coordinatorversusmediator.fillMode = kCAFillModeForwards;
		coordinatorversusmediator.additive = YES;
		coordinatorversusmediator.fillMode = kCAFillModeBoth;
		//NSLog(@"sets= business12 gen_str %@", business12);
	});
}


@end
        