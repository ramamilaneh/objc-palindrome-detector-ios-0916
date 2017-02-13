//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "NSString+Reverse.h"
@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSString *racecar = @"Flee to me, remote elf.";
    NSLog(@"%d",[self stringIsPalindrome:racecar]);
    return YES;
}

-(BOOL)stringIsPalindrome:(NSString *)string {
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    NSString *withoutPunctuation = [string copy];
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    NSString *lowercase = [spaceless lowercaseString];
    NSString *reverse = [NSString reverseString:lowercase];
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    
    return stringIsEqualToReverse;
}


@end
