//
//  PresentViewController.h
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PresentGhostViewController.h"
#import "PresentTinyTimViewController.h"
#import "PresentMarthaViewController.h"
#import "PresentScroogeViewController.h"
#import "PresentCratchettFamilyViewController.h"

@interface PresentViewController : UIViewController <UIPopoverControllerDelegate>
@property (nonatomic, strong)UIPopoverController * popover;
@property (strong, nonatomic)PresentGhostViewController * presentghost;
@property (strong, nonatomic)PresentTinyTimViewController * presenttim;
@property (strong, nonatomic)PresentMarthaViewController * presentmartha;
@property (strong, nonatomic)PresentScroogeViewController * presentscrooge;
@property (strong, nonatomic)PresentCratchettFamilyViewController * presentfamily;

- (IBAction)presentGhostButton:(id)sender;
- (IBAction)presentTimButton:(id)sender;
- (IBAction)presentMarthaButton:(id)sender;
- (IBAction)presentScroogeButton:(id)sender;
- (IBAction)presentFamilyButton:(id)sender;

@end
