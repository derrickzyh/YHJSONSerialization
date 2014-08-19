//
//  YHJSONSerialization.m
//  JSONDemo
//
//  Created by xuancong on 14-8-18.
//  Copyright (c) 2014年 Derrick Studio. All rights reserved.
//

#import "YHJSONSerialization.h"

@implementation NSString (YHJSONSerialization)
-(id)objectFromJSON
{
    NSError *error=nil;
    
    id data=[self objectFromJSONWithOptions:NSJSONReadingAllowFragments error:&error];
    
    
    return data;
}

-(id)mutableObjectFromJSON
{
    
    NSError *error=nil;
    
    id data=[self objectFromJSONWithOptions:NSJSONReadingMutableContainers error:&error];
    
    
    return data;
}

-(id)objectFromJSONWithOptions:(NSJSONReadingOptions)opt error:(NSError **)error
{
    
    id data=[NSJSONSerialization JSONObjectWithData:[self dataUsingEncoding:NSUTF8StringEncoding] options:opt error:error];
    return data;
}


@end


@implementation NSDictionary (YHJSONSerialization)
-(NSString*)JSONStringFromDict
{
    NSError *error=nil;
    
    NSString *jsonString=[self JSONStringFromDictWithOption:0 error:&error];
    
    return jsonString;
}

-(NSString*)JSONStringFromDictWithOption:(NSJSONWritingOptions)opt error:(NSError **)error
{
    NSData *data=[NSJSONSerialization dataWithJSONObject:self options:opt error:error];
    if (data) {
        return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
    
    return nil;
}

-(NSData*)JSONDataFromDict
{
    NSError *error=nil;
    
    NSData *jsonData=[self JSONDataFromDictWithOption:0 error:&error];
    
    return jsonData;
}

-(NSData*)JSONDataFromDictWithOption:(NSJSONWritingOptions)opt error:(NSError **)error
{
    NSData *data=[NSJSONSerialization dataWithJSONObject:self options:opt error:error];
    
    return data;
}
@end


@implementation NSArray (YHJSONSerialization)

-(NSString*)JSONStringFromArray
{
    NSError *error=nil;
    
    NSString *jsonString=[self JSONStringFromArrayWithOption:0 error:&error];
    
    return jsonString;
}

-(NSString*)JSONStringFromArrayWithOption:(NSJSONWritingOptions)opt error:(NSError **)error
{
    NSData *data=[NSJSONSerialization dataWithJSONObject:self options:opt error:error];
    if (data) {
        return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    }
    
    return nil;
}

-(NSData*)JSONDataFromArray
{
    NSError *error=nil;
    
    NSData *jsonData=[self JSONDataFromArrayWithOption:0 error:&error];
    
    return jsonData;
}

-(NSData*)JSONDataFromArrayWithOption:(NSJSONWritingOptions)opt error:(NSError **)error
{
    NSData *data=[NSJSONSerialization dataWithJSONObject:self options:opt error:error];
    
    return data;
}

@end
