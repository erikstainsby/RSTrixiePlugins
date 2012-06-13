//
//  ActionKeyPress.m
//  ActionKeyPress
//
//  Created by Erik Stainsby on 12-03-10.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ActionKeyPress.h"

@interface ActionKeyPress ()

@end

@implementation ActionKeyPress

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Key Press"];
		[self setEvent:@"keypress"];
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
