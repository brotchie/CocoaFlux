#import "FluxStore.h"

@implementation FluxStore
- (void)onAction:(NSString *)name payload:(NSDictionary *)payload {
    
    NSString *selectorString = self.actions[name];
    if (selectorString == nil)
        return;
    
    SEL selector = NSSelectorFromString([selectorString stringByAppendingString:@":"]);
    if (selector == (SEL)0)
        return;

    if (![self respondsToSelector:selector])
        return;
    
    [self performSelector:selector withObject:payload];
}
@end
