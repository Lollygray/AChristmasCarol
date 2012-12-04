//
//  FutureViewController.h
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FutureGhostViewController.h"
#import "FutureGraveViewController.h"
#import "FutureBobViewController.h"

@interface FutureViewController : UIViewController <UIPopoverControllerDelegate>

@property (nonatomic, strong)UIPopoverController * popover;
@property (nonatomic, strong)FutureGhostViewController * futureghost;
@property (nonatomic, strong)FutureGraveViewController * futuregrave;
@property (nonatomic, strong)FutureBobViewController * futurebob;

- (IBAction)ghostFutureButton:(id)sender;
- (IBAction)futureGraveButton:(id)sender;
- (IBAction)futureBobButton:(id)sender;

@end
