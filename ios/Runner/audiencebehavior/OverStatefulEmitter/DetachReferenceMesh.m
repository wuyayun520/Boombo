#import "DetachReferenceMesh.h"
    
@interface DetachReferenceMesh ()

@end

@implementation DetachReferenceMesh

- (void) onSessionStream: (NSMutableDictionary *)appbargrid
{
	dispatch_async(dispatch_get_main_queue(), ^{
		NSInteger scopeDirection = appbargrid.count;
		UITableView *canLayoutBase = [[UITableView alloc] init];
		[canLayoutBase setDelegate:self];
		[canLayoutBase setDataSource:self];
		[canLayoutBase setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
		[canLayoutBase setRowHeight:46];
		NSString *containerVelocity = @"CellIdentifier";
		[canLayoutBase registerClass:[UITableViewCell class] forCellReuseIdentifier:containerVelocity];
		UIRefreshControl *othersliderbound = [[UIRefreshControl alloc] init];
		[othersliderbound addTarget:self action:@selector(refreshData:) forControlEvents:UIControlEventValueChanged];
		[canLayoutBase setRefreshControl:othersliderbound];
		if (scopeDirection > 7) {
			// 当字典元素较多时，添加分页控件
			UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
			pageControl.numberOfPages = scopeDirection / 10 + 1;
			pageControl.currentPage = 0;
			[pageControl addTarget:self action:@selector(pageChanged:) forControlEvents:UIControlEventValueChanged];
		}
		//NSLog(@"Business18 gen_dic with count: %d%@", scopeDirection);
	});
}


@end
        