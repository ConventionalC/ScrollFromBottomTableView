#import "ScrollFromBottomTableView.h"
#import "ScrollFromBottomTableViewDataSource.h"

@implementation ScrollFromBottomTableView
{
    ScrollFromBottomTableViewDataSource *forwardingDataSource;
}

-(void)setDataSource:(id<UITableViewDataSource>)dataSource
{
    forwardingDataSource = ScrollFromBottomTableViewDataSource.new;
    forwardingDataSource.dataSource = dataSource;
    super.dataSource = forwardingDataSource;
}

@end
