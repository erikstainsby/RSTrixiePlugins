//
//  ReactionShow.m
//  ReactionShow
//
//  Created by Erik Stainsby on 12-03-01.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionShow.h"

@interface ReactionShow ()

@end

@implementation ReactionShow

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Show"];
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
