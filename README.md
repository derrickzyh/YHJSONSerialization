YHJSONSerialization
===================

JSON serialization and deserialization using system API


Requirements
-----------------------------------

IOS Version >= 5.0

Installation
-----------------------------------
### CocoaPods

YHJSONSerialization is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "YHJSONSerialization"
    
### Source

Direct add YHJSONSerialization to your project:

    YHJSONSerialization.h
    YHJSONSerialization.m

    
Examples
-----------------------------------

Import header

	#import "YHJSONSerialization.h"

### Parse JSON String

	NSString *sampleAllString=@"{\"data\":\"abc\",\"info\":\"123\"}";
    NSDictionary *object=[sampleAllString objectFromJSON];
    
### JSON Array to JSON String
	
	NSDictionary *sampleJSONDict=@{ @"opt": @"liek",
									@"kind": @[@"a",@"b",[NSNumber numberWithInt:2]], 
									@"BOOL":[NSNumber numberWithBool:YES]
								 };
    NSString *jsonStr=[sampleJSONDict JSONStringFromDict];
    
### JSON Dictionary to JSON String
	
	NSArray *sampleJSONArray=@[@"a",@"b",[NSNumber numberWithInt:2]];
    NSString *jsonStr=[sampleJSONArray JSONStringFromArray];
	

Author
-----------------------------------

Derrick Zhang, derrickzyh@gmail.com

License
-----------------------------------

YHJSONSerialization is available under the MIT license. See the LICENSE file for more info.
