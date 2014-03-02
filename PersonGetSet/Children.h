//
//  Children.h
//  PersonGetSet
//
//  Created by el1ven on 14-3-1.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Job.h"
@class Nurse;

@interface Children : NSObject
{
    NSString *name;
    id<Job> delegate;
}

@property(nonatomic,copy)NSString *name;
-(id)initWithName:(NSString*)_name andDelegate:(id<Job>)_delegate;
-(void)doThings;

@end
