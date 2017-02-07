//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

 -(NSString *)stringByReversingString:(NSString *)string;
 -(BOOL)stringIsPalindrome:(NSString *)string;


@end
