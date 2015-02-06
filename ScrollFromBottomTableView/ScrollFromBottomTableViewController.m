#import "ScrollFromBottomTableViewController.h"
#import "ScrollFromBottomTableViewDataSource.h"
#import "ScrollFromBottomTableViewDelegate.h"
#import "UIView+ScrollFromBottomTableView.h"

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    for(UIView *view in self.tableView.subviews)
    {
        if([view isKindOfClass:UITableViewHeaderFooterView.class])
        {
            UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView*)view;
            [header.contentView flipView];
        }
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    for(UIView *view in self.tableView.subviews)
    {
        if([view isKindOfClass:UITableViewHeaderFooterView.class])
        {
            UITableViewHeaderFooterView *header = (UITableViewHeaderFooterView*)view;
            [header.contentView flipView];
        }
    }
}

@end
