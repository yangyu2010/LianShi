//
//  Person.h
//  LianShi
//
//  Created by Young on 2017/1/11.
//  Copyright © 2017年 Young. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//- (void)eat;
//- (void)run;
//
//- (Person *)eat;
//- (Person *)run;
//
//- (void (^)())eat;
//- (void (^)())run;

//- (Person *(^)())eat;
//- (Person *(^)())run;

- (Person *(^)(NSString *food))eat;
- (Person *(^)(double distance))run;

@end
