//
//  ReactionFadeTo.m
//  ReactionFadeTo
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionFadeTo.h"

@interface ReactionFadeTo ()

@end

@implementation ReactionFadeTo

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Fade To"];
		[self setAction:@"fadeTo"];
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
	return YES;
}
- (BOOL) hasOpacityField {
	return YES;
}
- (BOOL) hasEasingField {
	return YES;
}
- (BOOL) hasCallbackField {
	return YES;
}

@end
