//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by Colin Walsh on 6/30/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"
#import "FISLocationsDataStore.h"

@interface FISAddLocationViewController ()

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nameField.accessibilityLabel = @"nameField";
    self.nameField.accessibilityIdentifier = @"nameField";

    
    self.latitudeField.accessibilityLabel = @"latitudeField";
    self.latitudeField.accessibilityIdentifier = @"latitudeField";
    
    self.longitudeField.accessibilityLabel = @"longitudeField";
    self.longitudeField.accessibilityIdentifier = @"longitudeField";
    
    self.saveButton.accessibilityLabel = @"saveButton";
    self.saveButton.accessibilityIdentifier = @"saveButton";
    
    self.cancelButton.accessibilityLabel = @"cancelButton";
    self.cancelButton.accessibilityIdentifier = @"cancelButton";
    
      self.store = [FISLocationsDataStore sharedLocationsDataStore];
}
- (IBAction)saveButtonPressed:(id)sender {
    NSString* locationName = self.nameField.text;
    NSNumber* locationLat = (NSNumber*)self.latitudeField.text;
    NSNumber* locationLong = (NSNumber*)self.longitudeField.text;
    
    CGFloat latitudeVal = [locationLat floatValue];
    CGFloat longitudeVal = [locationLong floatValue];
    
    self.locationToAdd = [[FISLocation alloc] initWithName:locationName latitude:latitudeVal longitude:longitudeVal];
    
    [self.store.locations addObject:self.locationToAdd];
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
