//
//  DMNEntry.m
//  Journal-C
//
//  Created by Kyle Jennings on 12/2/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

#import "DMNEntry.h"

@implementation DMNEntry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp;
{
    
    self = [super init];
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = timestamp;
    }
    return self;
}

@end
