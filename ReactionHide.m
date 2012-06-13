//
//  ReactionHide.m
//  ReactionHide
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionHide.h"

@interface ReactionHide ()

@end

@implementation ReactionHide

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Hide"];
		[self setAction:@"hide"];
    }
    
    return self;
}

- (BOOL) hasTargetField {
	return NO;
}
- (BOOL) hasDeltaField {
	return NO;
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
	return YES;
}
- (BOOL) hasCallbackField {
	return YES;
}

@end
