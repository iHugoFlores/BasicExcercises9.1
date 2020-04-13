//
//  HelloWorld.h
//  ObjectiveCProject
//
//  Created by Hugo Flores Perez on 4/13/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HelloWorld : NSObject 

- (NSString *)hello:(NSString *)input;
- (NSString *)oneForXOneForMe:(NSString *)input;
- (NSString *)babyBob:(NSString *)input;
- (NSString *)isLeapYear:(int)input;
- (double)yearToGigaseconds:(int)input;
- (long)differenceOfSquares:(int)n;
- (NSString *)reverseString:(NSString *)input;
- (int)hammingDistanceFor:(NSString *)a comparedWith: (NSString *) b;
- (void)beerSong;
- (NSString *)makeAcronymOf:(NSString *)input;
- (int)getNPrimeNumber:(int)n;

@end

NS_ASSUME_NONNULL_END
