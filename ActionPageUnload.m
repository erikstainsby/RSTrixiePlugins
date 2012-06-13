//
//  ActionPageUnload.m
//  ActionPageUnload
//
//  Created by Erik Stainsby on 12-03-10.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ActionPageUnload.h"

@interface ActionPageUnload ()

@end

@implementation ActionPageUnload

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Page Unload"];
		[self setEvent:@"unload"];
    }
    return self;
}

@end
