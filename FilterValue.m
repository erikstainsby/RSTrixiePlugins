//
//  ConditionValue.m
//  ConditionValue
//
//  Created by Erik Stainsby on 12-02-19.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "FilterValue.h"

@implementation FilterValue

@synthesize predicateMenu;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil]))
    {
		[self setPluginName: @"Value"]; 
    }
    return self;
}

- (NSString *) predicate {
	return [[[self predicateMenu] titleOfSelectedItem] lowercaseString];
}

- (NSString *) expression {
	return [NSString stringWithFormat:@".('%@').val('%@')",[[self selectorField] stringValue],[[self valueOfField] stringValue]];
}

@end
