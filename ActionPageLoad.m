//
//  ActionLoad.m
//  ActionLoad
//
//  Created by Erik Stainsby on 12-03-10.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ActionPageLoad.h"

@interface ActionPageLoad ()

@end

@implementation ActionPageLoad

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Page Load"];
		[self setEvent:@"load"];
    }
    
    return self;
}

@end
