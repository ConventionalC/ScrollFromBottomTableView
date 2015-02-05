#import <UIKit/UIKit.h>

//Proxies all data source methods, and flips cells, headers, and footers vertically
@interface ForwardingUITableViewDataSource:NSObject<UITableViewDataSource>

@property(nonatomic, assign) id<UITableViewDataSource>dataSource;

@end
