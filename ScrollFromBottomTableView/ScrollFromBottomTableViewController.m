#import "ScrollFromBottomTableViewController.h"
#import "ScrollFromBottomTableViewDataSource.h"
#import "ScrollFromBottomTableViewDelegate.h"

@implementation ScrollFromBottomTableViewController
{
    ScrollFromBottomTableViewDataSource *forwardingDataSource;
    ScrollFromBottomTableViewDelegate   *forwardingDelegate;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    forwardingDataSource = ScrollFromBottomTableViewDataSource.new;
    forwardingDataSource.dataSource = self;
    self.tableView.dataSource = forwardingDataSource;

    forwardingDelegate = ScrollFromBottomTableViewDelegate.new;
    forwardingDelegate.delegate = self;
    self.tableView.delegate = forwardingDelegate;
}

@end
