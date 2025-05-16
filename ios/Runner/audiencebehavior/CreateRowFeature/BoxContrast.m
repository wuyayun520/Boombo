#import "BoxContrast.h"
    
@interface BoxContrast ()

@end

@implementation BoxContrast

- (void) readFusedKernelContext: (NSMutableDictionary *)optimizerHead
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger transformOption = optimizerHead.count;
		UITableView *activatedOccasion = [[UITableView alloc] init];
		[activatedOccasion setDelegate:self];
		[activatedOccasion setDataSource:self];
		[activatedOccasion setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[activatedOccasion setRowHeight:41];
		NSString *sequentialTopic = @"CellIdentifier";
		[activatedOccasion registerClass:[UITableViewCell class] forCellReuseIdentifier:sequentialTopic];
		UIRefreshControl *updateStamp = [[UIRefreshControl alloc] init];
		[updateStamp addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[activatedOccasion setRefreshControl:updateStamp];
		if (transformOption > 3) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = transformOption / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", transformOption);
	});
}


@end
        