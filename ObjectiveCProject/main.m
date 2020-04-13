//
//  main.m
//  ObjectiveCProject
//
//  Created by Hugo Flores Perez on 4/13/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "HelloWorld.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    HelloWorld* exercise = [[HelloWorld alloc] init];
    NSString* res = [exercise hello:nil];
    NSLog(@"%@", res);
    
    res = [exercise oneForXOneForMe:nil];
    NSLog(@"%@", res);
    
    res = [exercise oneForXOneForMe:@"Alice"];
    NSLog(@"%@", res);
    
    res = [exercise babyBob:@"Hello!"];
    NSLog(@"%@", res);
    
    res = [exercise babyBob:@"Hello Bob"];
    NSLog(@"%@", res);
    
    res = [exercise isLeapYear:2000];
    NSLog(@"%@", res);
    
    res = [exercise isLeapYear:1996];
    NSLog(@"%@", res);
    
    NSLog(@"%f", [exercise yearToGigaseconds:20]);
    
    NSLog(@"%ld", [exercise differenceOfSquares:10]);
    
    NSLog(@"%@", [exercise reverseString:@"Hola"]);
    
    NSLog(@"%d", [exercise hammingDistanceFor:@"GAGCCTACTAACGGGAT" comparedWith:@"CATCGTAATGACGGCCT"]);
    
    [exercise beerSong];
    
    NSLog(@"%@", [exercise makeAcronymOf:@"The End of Narnia"]);
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
