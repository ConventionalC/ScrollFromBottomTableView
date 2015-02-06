#import "ScrollFromBottomTableView.h"
#import "ScrollFromBottomTableViewDataSource.h"
#import "ScrollFromBottomTableViewDelegate.h"

@implementation ScrollFromBottomTableView
{
    ScrollFromBottomTableViewDataSource *forwardingDataSource;
    ScrollFromBottomTableViewDelegate   *forwardingDelegate;
}

-(void)setDataSource:(id<UITableViewDataSource>)dataSource
{
    forwardingDataSource = ScrollFromBottomTableViewDataSource.new;
    forwardingDataSource.dataSource = dataSource;
    super.dataSource = forwardingDataSource;
}

-(void)setDelegate:(id<UITableViewDelegate>)delegate
{
    forwardingDelegate = ScrollFromBottomTableViewDelegate.new;
    forwardingDelegate.delegate = delegate;
    super.delegate = forwardingDelegate;
}

@end
