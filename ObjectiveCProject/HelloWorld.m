//
//  HelloWorld.m
//  ObjectiveCProject
//
//  Created by Hugo Flores Perez on 4/13/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import "HelloWorld.h"

@implementation HelloWorld

- (NSString *)hello:(NSString *)input {
    NSString *message = @"Hello, %@!";
    if (!input) {
        input = @"World";
    }
    return [message stringByReplacingOccurrencesOfString:@"%@" withString:input];
}

- (NSString *)oneForXOneForMe:(NSString *)input {
    NSString *message = @"One for %@, one for me.";
    NSString *subject = @"you";
    if (input) {
        subject = input;
    }
    return [message stringByReplacingOccurrencesOfString:@"%@" withString:subject];
}

- (NSString *)babyBob:(NSString *)input {
    NSString *expression = @"(Bob)$";
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:expression options:NSRegularExpressionCaseInsensitive error:nil];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:input options:0 range:NSMakeRange(0, [input length])];
    if (numberOfMatches > 0) {
        return @"Fine. Be that way!";
    }
    
    expression = @"(.*)[\?]$";
    regex = [NSRegularExpression regularExpressionWithPattern:expression options:NSRegularExpressionCaseInsensitive error:nil];
    numberOfMatches = [regex numberOfMatchesInString:input options:0 range:NSMakeRange(0, [input length])];
    if (numberOfMatches > 0) {
        return @"Sure";
    }
    
    expression = @"(.*)[!]$";
    regex = [NSRegularExpression regularExpressionWithPattern:expression options:NSRegularExpressionCaseInsensitive error:nil];
    numberOfMatches = [regex numberOfMatchesInString:input options:0 range:NSMakeRange(0, [input length])];
    if (numberOfMatches > 0) {
        return @"Whoa, chill out!";
    }

    return @"Whatever";
}

- (NSString *)isLeapYear:(int)input {
    if (input % 100 == 0 && input % 400 != 0) {
        return @"Not Leap";
    }
    
    if (input % 4 != 0) {
        return @"Not Leap";
    }
    
    return @"Is Leap";
}

- (double)yearToGigaseconds:(int)input {
    return ((double)input * 365 * 24 * 60 * 60) / pow(10, 9);
}

- (long)differenceOfSquares:(int)n {
    long numberSum = 0;
    long powerSum = 0;
    for (int i = 1; i <= n ; i += 1) {
        numberSum += i;
        powerSum += pow(i, 2);
    }
    return pow(numberSum, 2) - powerSum;
}

- (NSString *)reverseString:(NSString *)input {
    NSUInteger len = [input length];
    NSMutableString *result = [[NSMutableString alloc] initWithCapacity:len];
    for (int i = len - 1; i >= 0; i -= 1) {
        [result appendFormat:@"%c", [input characterAtIndex:i]];
    }
    return result;
}

- (int)hammingDistanceFor:(NSString *)a comparedWith: (NSString *) b {
    NSUInteger lenA = [a length];
    int res = 0;
    for (int i = 0; i < lenA; i += 1) {
        NSString *charA = [a substringWithRange:NSMakeRange(i, 1)];
        NSString *charB = [b substringWithRange:NSMakeRange(i, 1)];
        if (charA != charB) {
            res += 1;
        }
    }
    return res;
}

- (void)beerSong {
    int initialNumber = 10;
    int beers = initialNumber;
    while (beers > 1) {
        NSLog(@"%d bottles of beer on the wall, %d bottles of beer. Take one down and pass it around, %d bottles of beer on the wall.", beers, beers, beers - 1);
        beers -= 1;
    }
    
    NSLog(@"1 bottle of beer on the wall, 1 bottles of beer. Take it down and pass it around, no more bottles of beer on the wall.");
     NSLog(@"No more bottles of beer on the wall, no more bottles of beer.Go to the store and buy some more, 99 bottles of beer on the wall.");
}

- (NSString *)makeAcronymOf:(NSString *)input {
    NSString *expression = @"[ ]|[a-z]";
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:expression options:0 error:nil];
    NSString *res = [regex stringByReplacingMatchesInString:input options:0 range:NSMakeRange(0, [input length]) withTemplate:@""];
    return res;
}

- (int)getNPrimeNumber:(int)n {
    return 0;
}

@end
