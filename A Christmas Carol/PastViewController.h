//
//  PastViewController.h
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PastFezziwigViewController.h"
#import "PastGhostViewController.h"
#import "PastScroogeViewController.h"
#import "BelleViewController.h"
#import "PastGreedScroogeViewController.h"

@interface PastViewController : UIViewController <UIPopoverControllerDelegate>

@property (nonatomic, strong)UIPopoverController * popover;
@property (nonatomic, strong)PastFezziwigViewController * fezziwig;
@property (nonatomic, strong)PastGhostViewController * pastghost;
@property (nonatomic, strong)PastScroogeViewController * pastscrooge;
@property (nonatomic, strong)BelleViewController * belle;
@property (nonatomic, strong)PastGreedScroogeViewController * greedscrooge;


- (IBAction)fezziwigButton:(id)sender;
- (IBAction)pastGhostButton:(id)sender;
- (IBAction)pastScroogeButton:(id)sender;
- (IBAction)belleButton:(id)sender;
- (IBAction)greedScroogeButton:(id)sender;


@end
