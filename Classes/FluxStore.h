#import <Foundation/Foundation.h>

@interface FluxStore : NSObject
- (void)onAction:(NSString *)name payload:(NSDictionary *)payload;
- (NSString *)name;
- (NSDictionary *)actions;
@end
