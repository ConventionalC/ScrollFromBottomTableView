#import "ScrollFromBottomTableViewDataSource.h"
#import "UIView+ScrollFromBottomTableView.h"

@implementation ScrollFromBottomTableViewDataSource
{
    BOOL initialized;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if(!initialized)
    {
        initialized = YES;
        [tableView flipView];
    }
    return [self.dataSource numberOfSectionsInTableView:tableView];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    [cell flipView];
    return cell;
}

@end
