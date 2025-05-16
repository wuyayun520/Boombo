#import "SliderTaxonomy.h"
    
@interface SliderTaxonomy ()

@end

@implementation SliderTaxonomy

- (void) captureView: (NSMutableDictionary *)dynamicMission
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger advancedRow = dynamicMission.count;
		UIBezierPath * canRenderBullet = [[UIBezierPath alloc]init];
		[canRenderBullet moveToPoint:CGPointMake(387, 213)];
		[canRenderBullet addArcWithCenter:CGPointMake(advancedRow, 213) radius:9 startAngle:M_1_PI endAngle:M_PI_2 clockwise:NO];
		[canRenderBullet addClip];
		//NSLog(@"sets= bussiness4 gen_dic %@", bussiness4);
	});
}


@end
        