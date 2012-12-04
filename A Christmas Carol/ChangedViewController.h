//
//  ChangedViewController.h
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChangeHappyScroogeViewController.h"
#import "ChangeBobRaiseViewController.h"
#import "ChangeFamilyViewController.h"

@interface ChangedViewController : UIViewController <UIPopoverControllerDelegate>

@property (nonatomic, strong)UIPopoverController * popover;
@property (nonatomic, strong)ChangeHappyScroogeViewController * changescrooge;
@property (nonatomic, strong)ChangeBobRaiseViewController * changebob;
@property (nonatomic, strong)ChangeFamilyViewController * changefamily;

- (IBAction)changeScroogeButton:(id)sender;
- (IBAction)changeBobButton:(id)sender;
- (IBAction)changeFamilyButton:(id)sender;


@end
