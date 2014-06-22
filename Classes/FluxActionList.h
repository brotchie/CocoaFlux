#import <Foundation/Foundation.h>

@class Flux;

@interface FluxActionList : NSObject
@property (readonly, nonatomic) Flux *flux;
- (id)initWithFlux:(Flux *)flux;
@end
