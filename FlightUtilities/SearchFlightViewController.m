//
//  ViewController.m
//  FlightUtilities
//
//  Created by Patrick Balestra on 11/29/18.
//  Copyright © 2018 Patrick Balestra. All rights reserved.
//

#import "SearchFlightViewController.h"
#import "FUFlightViewController.h"

@interface SearchFlightViewController ()

@property (strong, nonatomic) IBOutlet UITextField *airlineCodeTextField;
@property (strong, nonatomic) IBOutlet UITextField *flightCodeTextField;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation SearchFlightViewController

- (void)searchFlight {
    NSNumber *flightCode = [NSNumber numberWithInteger:[self.flightCodeTextField.text integerValue]];
    NSString *airlineCode = self.airlineCodeTextField.text;
    NSDate *flightDate = [self.datePicker date];

    FUFlightViewController *controller = [NSClassFromString(@"FUFlightViewController") new];
    [self.navigationController pushViewController:controller animated:YES];
    [controller loadFlightWithFlightCode:flightCode airlineCode:airlineCode date:flightDate];
    controller.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        [self searchFlight];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.airlineCodeTextField) {
        [self.flightCodeTextField becomeFirstResponder];
    } else {
        [textField resignFirstResponder];
    }
    return NO;
}

@end
