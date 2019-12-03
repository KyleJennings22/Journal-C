//
//  DMNEntry.h
//  Journal-C
//
//  Created by Kyle Jennings on 12/2/19.
//  Copyright © 2019 Kyle Jennings. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DMNEntry : NSObject

// MARK: - Properties
@property (nonatomic, copy, readonly) NSString *title;
@property (nonatomic, copy, readonly) NSString *bodyText;
@property (nonatomic, copy, readonly) NSDate *timestamp;

- (instancetype)initWithTitle: (NSString *)title
                    bodyText: (NSString *)bodyText
                    timestamp: (NSDate *)timestamp;
                    


@end

NS_ASSUME_NONNULL_END
