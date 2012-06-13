//
//  ReactionAddClass.m
//  ReactionAddClass
//
//  Created by Erik Stainsby on 12-02-18.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionClassAdd.h"

@implementation ReactionClassAdd

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
    {
		[self setPluginName: @"Add Class"];
		[self setAction:@"addClass"];
    }
    return self;
} 

- (BOOL) hasTargetField {
	return NO;
}
- (BOOL) hasDeltaField {
	return YES;
}
- (BOOL) hasDelayField {
	return YES;
}
- (BOOL) hasPeriodField {
	return NO;
}
- (BOOL) hasOpacityField {
	return NO;
}
- (BOOL) hasEasingField {
	return NO;
}
- (BOOL) hasCallbackField {
	return YES;
}
@end
