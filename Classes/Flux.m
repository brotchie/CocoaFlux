#import "Flux.h"

@interface Flux ()
@property (nonatomic) BOOL isDispatching;
@end

@implementation Flux

- (id)initWithStores:(NSArray *)stores
{
    self = [super init];
    if (self) {
        _stores = stores;
        _actions = [[FluxActionList alloc] initWithFlux:self];
        self.isDispatching = false;
    }
    return self;
}

- (void)dispatch:(NSString *)name payload:(NSDictionary *)payload {
    NSAssert(!self.isDispatching, @"Cannot dispatch while dispatching!");
    self.isDispatching = YES;
    for (FluxStore *store in self.stores) {
        [store onAction:name payload:payload];
    }
    self.isDispatching = NO;
}

- (FluxStore *)store:(NSString *)name {
    for (FluxStore *store in self.stores) {
        if ([store.name isEqualToString:name]) {
            return store;
        }
    }
    return nil;
}
@end
