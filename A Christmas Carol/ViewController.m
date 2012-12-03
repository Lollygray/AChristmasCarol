//
//  ViewController.m
//  A Christmas Carol
//
//  Created by Lori Graybill on 11/30/12.
//  Copyright (c) 2012 Lori Graybill. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize popover, scrooge1, fred, portly, clerk;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Home Buttons

- (IBAction)scrooge1Button:(id)sender{
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            scrooge1 = [[Scrooge1ViewController alloc]init];
        });
        [scrooge1 setContentSizeForViewInPopover:CGSizeMake(290, 60)];
        
        popover = [[UIPopoverController alloc] initWithContentViewController:scrooge1];
        [popover setDelegate:self];
        [popover presentPopoverFromRect:CGRectMake(380, 300, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];        
    }

- (IBAction)fredButton:(id)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fred = [[FredViewController alloc]init];
    });
    [fred setContentSizeForViewInPopover:CGSizeMake(360, 50)];
    
    popover = [[UIPopoverController alloc] initWithContentViewController:fred];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(575, 130, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)portlyButton:(id)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        portly = [[PortlyViewController alloc]init];
    });
    [portly setContentSizeForViewInPopover:CGSizeMake(275, 50)];
    
    popover = [[UIPopoverController alloc] initWithContentViewController:portly];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(100, 130, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

- (IBAction)clerkButton:(id)sender {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        clerk = [[ClerkViewController alloc]init];
    });
    [clerk setContentSizeForViewInPopover:CGSizeMake(250, 50)];
    
    popover = [[UIPopoverController alloc] initWithContentViewController:clerk];
    [popover setDelegate:self];
    [popover presentPopoverFromRect:CGRectMake(375, 600, 10, 10) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionDown animated:YES];
}

-(BOOL)popoverControllerShouldDismissPopover:(UIPopoverController *)popoverController
{
    return YES;
}


@end
