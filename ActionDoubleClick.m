//
//  ActionDoubleClick.m
//  ActionDoubleClick
//
//  Created by Erik Stainsby on 12-02-18.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ActionDoubleClick.h"

@implementation ActionDoubleClick

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil]))
    {
		[self setPluginName: @"DoubleClick"];
		[self setEvent:@"dblclick"];
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
