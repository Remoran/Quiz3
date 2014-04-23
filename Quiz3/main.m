//
//  main.m
//  Quiz3
//
//  Created by Ryan on 1/31/14.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Quiz3AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        NSLog(@"Ryan");
        NSString *firstName = @"Ryan";
        NSLog(@"Step 2 was: %@", firstName);
        NSNumber *step4 = @200;
        NSLog(@"Step 4 was: %@", step4);
        NSArray *fruits = @[@"Pineapple", @"Orange", @"Watermelon"]; // step 6
        for (NSString *fruit in fruits) {
            NSLog(@"%@ is a fruit", fruit);
        }
        NSDictionary *sweetness = @{@"Pineapple": @8, @"Orange": @5, @"Watermelon": @3};
        NSLog(@"%@", sweetness[@"Pineapple"]); // step 9
        
        NSNumber *step10 = @123;
        NSUInteger myUInteger = [step10 unsignedIntegerValue];
        NSLog(@"Step 10 is: %lu", myUInteger);
        
        NSNumber *step11Part1 = @2;
        NSNumber *step11Part2 = @4;
        NSUInteger Step11Part1Int = [step11Part1 unsignedIntegerValue];
        NSUInteger Step11Part2Int = [step11Part2 unsignedIntegerValue];
        NSUInteger Step11Answer = Step11Part1Int * Step11Part2Int;
        NSLog(@"Step 11 is: %lu", Step11Answer);
        
        NSString *lastName = @"Moran";
        NSString *fullName = [[firstName stringByAppendingString:@" "] stringByAppendingString:lastName]; // step 13
        NSLog(@"%@", fullName); // step 14
        
        for (NSNumber *sweetness in fruits) {
            if (sweetness < @4){
                NSLog(@"Not sweet");
            } else if (sweetness > @7) {
                NSLog(@"Sweet");
            }
        }
        
        typedef enum { // step 16
            MON,
            TUE,
            WED,
            THU,
            FRI,
            SAT,
            SUN
        } NSInteger;
        
        typedef enum DayofWeek currentDay; // step 17
        
        void (^myFirstBlock)(void) =  ^ {
            NSLog(@"Hello World");
        };
        myFirstBlock();

        void (^mySecondBlock)(NSString *) = ^(NSString *message){
            NSLog(@"%@", message);
        };
        mySecondBlock(@"Hello");
        mySecondBlock(@"World");
        
    
        // return UIApplicationMain(argc, argv, nil, NSStringFromClass([Quiz3AppDelegate class]));
    }
}
