//
//  YHJSONSerialization.h
//  JSONDemo
//
//  Created by xuancong on 14-8-18.
//  Copyright (c) 2014年 Derrick Studio. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (YHJSONSerialization)
-(id)objectFromJSON;
-(id)mutableObjectFromJSON;
-(id)objectFromJSONWithOptions:(NSJSONReadingOptions)opt error:(NSError **)error;
@end

@interface NSDictionary (YHJSONSerialization)
-(NSString*)JSONStringFromDict;
-(NSString*)JSONStringFromDictWithOption:(NSJSONWritingOptions)opt error:(NSError **)error;
-(NSData*)JSONDataFromDict;
-(NSData*)JSONDataFromDictWithOption:(NSJSONWritingOptions)opt error:(NSError **)error;
@end

@interface NSArray (YHJSONSerialization)
-(NSString*)JSONStringFromArray;
-(NSString*)JSONStringFromArrayWithOption:(NSJSONWritingOptions)opt error:(NSError **)error;
-(NSData*)JSONDataFromArray;
-(NSData*)JSONDataFromArrayWithOption:(NSJSONWritingOptions)opt error:(NSError **)error;
@end