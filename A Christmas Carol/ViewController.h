//
//  ViewController.h
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Scrooge1ViewController.h"
#import "FredViewController.h"
#import "PortlyViewController.h"
#import "ClerkViewController.h"

@interface ViewController : UIViewController <UIPopoverControllerDelegate>
@property (nonatomic, strong)UIPopoverController * popover;
@property (nonatomic, strong)Scrooge1ViewController * scrooge1;
@property (nonatomic, strong)FredViewController * fred;
@property (nonatomic, strong)PortlyViewController * portly;
@property (nonatomic, strong)ClerkViewController * clerk;

- (IBAction)scrooge1Button:(id)sender;
- (IBAction)fredButton:(id)sender;
- (IBAction)portlyButton:(id)sender;
- (IBAction)clerkButton:(id)sender;




@end
