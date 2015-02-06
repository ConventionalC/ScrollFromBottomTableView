#import "ForwardingUITableViewDataSource.h"

@implementation ForwardingUITableViewDataSource

- (BOOL)respondsToSelector:(SEL)aSelector
{
    return [self.dataSource respondsToSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    if(self.dataSource && [self.dataSource respondsToSelector:
         [anInvocation selector]])
        [anInvocation invokeWithTarget:self.dataSource];
    else
        [super forwardInvocation:anInvocation];
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dataSource tableView:tableView numberOfRowsInSection:section];
}

- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return [self.dataSource tableView:tableView cellForRowAtIndexPath:indexPath];
}

@end
