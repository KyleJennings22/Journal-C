//
//  DMNEntryDetailViewController.m
//  Journal-C
//
//  Created by Kyle Jennings on 12/2/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

#import "DMNEntryDetailViewController.h"

@interface DMNEntryDetailViewController ()

@end

@implementation DMNEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setEntryLandingPad:(DMNEntry *)entryLandingPad
{
    _entryLandingPad = entryLandingPad;
    
    [self updateViewsWith:entryLandingPad];
}

- (void)updateViewsWith:(DMNEntry *)entry
{
    [self loadViewIfNeeded];
    if (self) {
        self.entryTitleTextField.text = entry.title;
        self.bodyTextView.text = entry.bodyText;
    }
}

@end
