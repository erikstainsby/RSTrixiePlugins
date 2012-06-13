//
//  ReactionAnimate.h
//  ReactionAnimate
//
//  Created by Erik Stainsby on 12-03-07.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import <RSTrixieFramework/RSReactionPlugin.h>

@interface ReactionAnimate : RSReactionPlugin < NSTableViewDataSource, NSTableViewDelegate >

@property (retain) IBOutlet NSTableView * tableView;
@property (retain) NSMutableArray * tableData;

- (IBAction) addAnimatePropVal:(id)sender;

@end
