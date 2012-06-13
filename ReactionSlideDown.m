//
//  ReactionSlideDown.m
//  ReactionSlideDown
//
//  Created by Erik Stainsby on 12-03-01.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionSlideDown.h"

@interface ReactionSlideDown ()

@end

@implementation ReactionSlideDown

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Slide Down"];
		[self setAction:@"slideDown"];
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
	return NO;
}
- (BOOL) hasEasingField {
	return YES;
}
- (BOOL) hasCallbackField {
	return YES;
}


@end
