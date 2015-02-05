#import <UIKit/UIKit.h>

@interface ForwardingUITableViewDelegate : NSObject<UITableViewDelegate>

@property(nonatomic, assign) id<UITableViewDelegate>delegate;

@end
