//
//  FUFlightViewController.h
//  FlightUtilities
//
//  Created by Patrick Balestra on 11/30/18.
//  Copyright © 2018 Patrick Balestra. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FUFlightViewController : UIViewController

- (id)initWithFlightCode:(unsigned long long)arg1 airlineCode:(id)arg2;
- (void)loadFlightWithFlightCode:(id)arg1 airlineCode:(id)arg2 date:(id)arg3;

@end

NS_ASSUME_NONNULL_END
