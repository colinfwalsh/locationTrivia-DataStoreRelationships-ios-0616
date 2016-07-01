//
//  FISTriviaTableViewController.h
//  locationTrivia-dataStore
//
//  Created by Colin Walsh on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"

@interface FISTriviaTableViewController : UITableViewController

@property (strong, nonatomic) FISLocation *location;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *addTriviaButton;

@end
