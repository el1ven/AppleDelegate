//
//  main.m
//  PersonGetSet
//
//  Created by el1ven on 14-1-29.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Job.h"
#import "Nurse.h"
#import "Children.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
        NSLog(@"Hello, World!");
        
        NSString *name = [[NSString alloc]initWithFormat:@"Wawa"];
        Nurse *lady = [[Nurse alloc]init];
        Children *chd = [[Children alloc]initWithName:name andDelegate:lady];
        

        [NSTimer scheduledTimerWithTimeInterval:2 target:chd selector:@selector(doThings) userInfo:nil repeats:YES];
        
        BOOL isTrue = YES;
        while (isTrue) {
            NSDate *date = [NSDate date];
            [[NSRunLoop currentRunLoop] runUntilDate:[date dateByAddingTimeInterval:20]];
            isTrue = NO;
            NSLog(@"quitquit");
        }
        
    }
    return 0;
}

