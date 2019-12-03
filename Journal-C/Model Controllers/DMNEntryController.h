//
//  DMNEntryController.h
//  Journal-C
//
//  Created by Kyle Jennings on 12/2/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DMNEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface DMNEntryController : NSObject

@property (nonatomic, readonly) NSMutableArray *entries;

+ (DMNEntryController *)shared;

//- (NSArray *)fetchEntries;

- (void)addEntry:(NSString *)title
        bodyText: (NSString *)bodyText
       timestamp: (NSDate *)timestamp;

- (void)removeEntry: (DMNEntry *)entry;

- (void)saveToPersistentStorage;

- (void)loadFromPersistentStorage;

@end

NS_ASSUME_NONNULL_END
