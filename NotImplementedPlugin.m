//
//  NotImplementedPlugin.m
//  NotImplementedPlugin
//
//  Created by Erik Stainsby on 12-03-03.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "NotImplementedPlugin.h"

@interface NotImplementedPlugin ()

@end

@implementation NotImplementedPlugin

- (id)init
{
    self = [super initWithNibName:@"NotImplementedPlugin" bundle:[NSBundle mainBundle]];
    if (self) {
        [self setPluginName:@"Not Yet Implemented"];
    }
    
    return self;
}

@end
