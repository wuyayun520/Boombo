#import "BetweenAspectDispatcher.h"
    
@interface BetweenAspectDispatcher ()

@end

@implementation BetweenAspectDispatcher

- (void) sortKeyCompositionMode: (NSMutableDictionary *)beginnerScreen
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger draggableEvent = beginnerScreen.count;
		UIBezierPath * agilerole = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(draggableEvent, 21, 558, 113)];
		[agilerole closePath];
		[agilerole fill];
		//NSLog(@"sets= bussiness4 gen_dic %@", bussiness4);
	});
}


@end
        