//
//  Utils.m
//  iShareNotes
//
//  Created by Prashanna Raghavan on 10/20/15.
//  Copyright © 2015 Prashanna Raghavan. All rights reserved.
//

#import "Utils.h"
#define kFeedsDataPlist @"ShareNotesData"

@implementation Utils

+(NSArray *)returnDictionaryFromPlistForKey:(NSString *)key
{
    NSString *path = [[NSBundle mainBundle] pathForResource:
                      kFeedsDataPlist ofType:@"plist"];
    // Build the array from the plist
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    return [dict valueForKey:key];
}


@end
