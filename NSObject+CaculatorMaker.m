//
//  NSObject+CaculatorMaker.m
//  LianShi
//
//  Created by Young on 2017/1/11.
//  Copyright © 2017年 Young. All rights reserved.
//

#import "NSObject+CaculatorMaker.h"

@implementation NSObject (CaculatorMaker)

+ (double)makeCaculators:(void (^)(Caculator *make))caculatorBlock {

    Caculator *clt = [[Caculator alloc] init];
    caculatorBlock(clt);
    return clt.result;
}
@end
