//
//  FISAddTriviaViewController.h
//  locationTrivia-dataStore
//
//  Created by Colin Walsh on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"
#import "FISLocationsDataStore.h"
#import "FISTrivium.h"

@interface FISAddTriviaViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *addTrivia;

@property (strong, nonatomic) IBOutlet UIButton *saveButton;
@property (strong, nonatomic) IBOutlet UIButton *cancelButton;

@property (nonatomic) NSUInteger indexNumber;
@property (strong, nonatomic) FISLocation *location;
@property (strong, nonatomic) FISLocationsDataStore *store;
@property (strong, nonatomic) FISTrivium *trivia;

@end
