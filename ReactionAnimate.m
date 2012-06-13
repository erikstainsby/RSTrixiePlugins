//
//  ReactionAnimate.m
//  ReactionAnimate
//
//  Created by Erik Stainsby on 12-03-07.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionAnimate.h"

@interface ReactionAnimate ()

@end

@implementation ReactionAnimate

@synthesize tableView;
@synthesize tableData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName: @"Animate"];
		
		tableData = [NSMutableArray array];
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


- (void) resetForm {
	NSLog(@"%s- [%04d] %@", __PRETTY_FUNCTION__, __LINE__, @"");
	[super resetForm];
	
	[[self tableData] removeAllObjects];
	[[self tableView] reloadData];
}


- (NSString *) emitScript {
	
	NSString * result = @"";
	
	if( [[[self delayField] stringValue] length] > 0) {
		result = [result stringByAppendingFormat:@".delay(%lu)",[[self delayField] integerValue]];	
	}
	result = [result stringByAppendingFormat:@".%@(",[self action]];
	
	NSMutableArray * props = [NSMutableArray arrayWithCapacity:[tableData count]];
	for(NSDictionary * rowData in tableData) {
		[props addObject: [NSString stringWithFormat:@"'%@':'%@'",[rowData valueForKey:@"property"], [rowData valueForKey:@"value"]]];
	}
	NSString * strBuffer = @"";
	for(int i=0; i<[props count];i++) {
		strBuffer = [strBuffer stringByAppendingFormat:@"%@",[props objectAtIndex:i]];
		if( i < [props count]-1) {
			strBuffer = [strBuffer stringByAppendingString:@", "];	
		}
	}
	result = [result stringByAppendingFormat:@"{%@}",strBuffer];
	
	result = [result stringByAppendingFormat:@", %lu",[[self periodField] integerValue]];
	
	if([[[self callbackField] stringValue] length] > 0) {
		result = [result stringByAppendingFormat:@", %@",[[self callbackField] stringValue]];
	}
	result = [result stringByAppendingString:@")"];
	return result;
}


#pragma mark - NSTabelViewDataSource methods

- (NSInteger) numberOfRowsInTableView:(NSTableView *)tableView {
	return [tableData count];
}

- (id) tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
	NSDictionary * rowData = [tableData objectAtIndex:row];
	return [rowData valueForKey:[tableColumn identifier]];
}

- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)anObject forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
	
	NSMutableDictionary * rowData = [[tableData objectAtIndex:rowIndex] mutableCopy];
	[rowData setValue:anObject forKey:[aTableColumn identifier]];
	[tableData replaceObjectAtIndex:rowIndex withObject:rowData];
	[tableView reloadData];
}

#pragma mark - NSTabelViewDelegate methods

- (IBAction) addAnimatePropVal:(id)sender {
	
	[tableData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"prop",@"property",@"val",@"value",nil]];
	NSLog(@"%s- [%04d] %@", __PRETTY_FUNCTION__, __LINE__, @"");
	[tableView reloadData];
}


@end
