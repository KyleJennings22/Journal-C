//
//  DMNEntryController.m
//  Journal-C
//
//  Created by Kyle Jennings on 12/2/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

#import "DMNEntryController.h"
#import "DMNEntry.h"

@interface DMNEntryController()

@property (nonatomic, strong, readwrite) NSMutableArray *entries;

@end

@implementation DMNEntryController


+ (DMNEntryController *) shared {
    static DMNEntryController *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [DMNEntryController new];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray array];
    }
    return self;
}

//- (NSArray *)fetchEntries
//{
//    NSMutableArray *entries = [[NSMutableArray alloc] init];
//
//    for (DMNEntry *entry in [self entries])
//    {
//        [entries addObject:entry];
//    }
//
//    return entries;
//}


- (void)addEntry:(NSString *)title
        bodyText: (NSString *)bodyText
       timestamp:(nonnull NSDate *)timestamp;
{
    DMNEntry *entry = [[DMNEntry alloc] initWithTitle:title bodyText:bodyText timestamp:timestamp];
    
    [_entries addObject:entry];
    
}

- (void)removeEntry:(DMNEntry *)entry
{
    [_entries removeObject:entry];
}

@end
