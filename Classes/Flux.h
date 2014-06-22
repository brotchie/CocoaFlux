#import <Foundation/Foundation.h>

#import "FluxStore.h"
#import "FluxActionList.h"

@interface Flux : NSObject
@property (readonly, nonatomic) FluxActionList *actions;
@property (readonly, nonatomic) NSArray *stores;

- (id)initWithStores:(NSArray *)stores;
- (void)dispatch:(NSString *)name payload:(NSDictionary *)payload;
- (FluxStore *)store:(NSString *)name;
@end
