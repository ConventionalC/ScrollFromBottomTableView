#import "UIView+ScrollFromBottomTableView.h"

@implementation UIView (ScrollFromBottomTableView)

- (void)flipView
{
    self.transform = CGAffineTransformMakeScale (1,-1);
}

@end
