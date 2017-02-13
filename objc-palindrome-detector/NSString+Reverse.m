//
//  NSString+Reverse.m
//  objc-palindrome-detector
//
//  Created by Rama Milaneh on 2/13/17.
//  Copyright © 2017 The Flatiron School. All rights reserved.
//

#import "NSString+Reverse.h"

@implementation NSString (Reverse)

+(NSString *)reverseString:(NSString *)string {
    NSString *reversedString = @"";
    
    for(NSUInteger i = string.length; i >= 0; i--) {
        [reversedString stringByAppendingFormat:@"%c",[string characterAtIndex:i]];
    }
    
    return reversedString;
}


@end
