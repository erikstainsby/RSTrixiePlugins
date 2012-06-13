//
//  ConditionStatus.m
//  ConditionStatus
//
//  Created by Erik Stainsby on 12-02-19.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "FilterStatus.h"


@implementation FilterStatus

@synthesize statusMenu;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]))
    {
		[self setPluginName: @"Status"];
    }
    return self;
}

- (NSString *) predicate {
	return [[[self statusMenu] titleOfSelectedItem] lowercaseString];
}

- (NSString *) expression {
	return [NSString stringWithFormat:@".%@()",[self predicate]];
}

@end
