//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by Colin Walsh on 7/1/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"

@interface FISAddTriviaViewController ()

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.addTrivia.accessibilityLabel = @"TriviumTextField";
    self.addTrivia.accessibilityIdentifier = @"TriviumTextField";
    
    self.saveButton.accessibilityLabel = @"Save Button";
    self.saveButton.accessibilityIdentifier = @"Save Button";
    
    
    self.cancelButton.accessibilityLabel = @"Cancel Button";
    self.cancelButton.accessibilityIdentifier = @"Cancel Button";
    
    self.store = [FISLocationsDataStore sharedLocationsDataStore];
    
}
- (IBAction)saveButtonPressed:(id)sender {
    
   // self.store.locations
    
    self.trivia = [[FISTrivium alloc] initWithContent:self.addTrivia.text likes:0];
    
    self.location = self.store.locations[self.indexNumber];
    
    [self.location.trivia addObject:self.trivia];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
