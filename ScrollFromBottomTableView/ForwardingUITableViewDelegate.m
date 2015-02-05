#import "ForwardingUITableViewDelegate.h"

@implementation ForwardingUITableViewDelegate

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    if(self.delegate && [self.delegate respondsToSelector:
                           [anInvocation selector]])
        [anInvocation invokeWithTarget:self.delegate];
    else
        [super forwardInvocation:anInvocation];
}

@end
