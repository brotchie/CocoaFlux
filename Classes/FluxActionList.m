#import "FluxActionList.h"

@interface FluxActionList ()
@end

@implementation FluxActionList

- (id)initWithFlux:(id)flux
{
    self = [super init];
    if (self) {
        _flux = flux;
    }
    return self;
}

@end
