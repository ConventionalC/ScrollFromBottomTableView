#import "ForwardingUITableViewDelegate.h"

@implementation ForwardingUITableViewDelegate

- (BOOL)respondsToSelector:(SEL)aSelector
{
    return [self.delegate respondsToSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    if(self.delegate && [self.delegate respondsToSelector:
                           [anInvocation selector]])
        [anInvocation invokeWithTarget:self.delegate];
    else
        [super forwardInvocation:anInvocation];
}

@end
