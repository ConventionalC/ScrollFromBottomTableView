#import "ScrollFromBottomTableViewDelegate.h"
#import "UIView+ScrollFromBottomTableView.h"

@implementation ScrollFromBottomTableViewDelegate

- (BOOL)respondsToSelector:(SEL)aSelector
{
    if([@[@"tableView:viewForHeaderInSection:", @"tableView:viewForFooterInSection:"] containsObject:NSStringFromSelector(aSelector)])
        return YES;
    return [self.delegate respondsToSelector:aSelector];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if([self.delegate respondsToSelector:@selector(tableView:viewForHeaderInSection:)])
    {
        UIView *view = [self.delegate tableView:tableView viewForHeaderInSection:section];
        [view flipView];
        return view;
    }
    else if ([tableView.dataSource respondsToSelector:@selector(tableView:titleForHeaderInSection:)])
    {
        UITableViewHeaderFooterView *header = UITableViewHeaderFooterView.new;
        header.textLabel.text = [tableView.dataSource tableView:tableView titleForHeaderInSection:section];
        [header flipView];
        return header;
    }
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    if([self.delegate respondsToSelector:@selector(tableView:viewForFooterInSection:)])
    {
        UIView *view = [self.delegate tableView:tableView viewForFooterInSection:section];
        [view flipView];
        return view;
    }else if ([tableView.dataSource respondsToSelector:@selector(tableView:titleForFooterInSection:)])
    {
        UITableViewHeaderFooterView *footer = UITableViewHeaderFooterView.new;
        footer.textLabel.text = [tableView.dataSource tableView:tableView titleForFooterInSection:section];
        [footer flipView];
        return footer;
    }
    return nil;
}

@end
