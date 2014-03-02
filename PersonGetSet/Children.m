//
//  Children.m
//  PersonGetSet
//
//  Created by el1ven on 14-3-1.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "Children.h"

@implementation Children

@synthesize name;
//@synthesize delegate;
static int count = 1;

-(id)initWithName:(NSString*)_name andDelegate:(id<Job>)_delegate
{
    self = [super init];
    if(self){
        self.name = _name;
        self->delegate = _delegate;
    }
    return self;
}

-(void)doThings
{
    switch (count) {
        case 1:
            [delegate takePlay];
            break;
        case 2:
            [delegate takeEat];
            break;
        case 3:
            [delegate takePill];
            break;
        case 4:
            [delegate takeShower];
            break;
            
        default:
            break;
    }
    count = count+1;
    if(count >4 ){
        count = 1;
    }
    
}
@end
