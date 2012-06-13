//
//  ActionKeyDown.m
//  ActionKeyDown
//
//  Created by Erik Stainsby on 12-03-10.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ActionKeyDown.h"

@interface ActionKeyDown ()

@end

@implementation ActionKeyDown

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Key Down"];
		[self setEvent:@"keydown"];
    }
    return self;
}

- (BOOL) hasPreventDefaultButton { 
	return YES; 
} 
- (BOOL) hasStopBubblingButton { 
	return YES; 
} 
- (BOOL) preventDefault {
	return [[self preventDefaultButton] state];
}
- (BOOL) stopBubbling {
	return [[self stopBubblingButton] state];
}



@end
