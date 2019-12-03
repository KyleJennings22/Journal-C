//
//  DMNEntryDetailViewController.h
//  Journal-C
//
//  Created by Kyle Jennings on 12/2/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DMNEntry.h"
NS_ASSUME_NONNULL_BEGIN

@interface DMNEntryDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@property (nonatomic) DMNEntry *entryLandingPad;

@end

NS_ASSUME_NONNULL_END
