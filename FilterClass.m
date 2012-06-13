//
//  ConditionHasClass.m
//  ConditionHasClass
//
//  Created by Erik Stainsby on 12-02-19.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "FilterClass.h"


@implementation FilterClass

@synthesize selectorField;
@synthesize valueOfField;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	
    if( nil != (self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil]))
    {
		[self setPluginName: @"Has Class"];
    }
    return self;
}


- (NSString *) predicate {
	return @"hasClass";
}

- (NSString *) expression {
	return [NSString stringWithFormat:@".%@('%@')",[self predicate],[[self valueOfField]stringValue]];
}

@end
