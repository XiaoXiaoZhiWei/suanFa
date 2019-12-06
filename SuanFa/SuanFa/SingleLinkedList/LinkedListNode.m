//
//  LinkedListNode.m
//  SuanFa
//
//  Created by C on 2019/12/6.
//  Copyright © 2019 cuizhiwei. All rights reserved.
//

#import "LinkedListNode.h"

@implementation LinkedListNode

- (instancetype)initWithValue:(id)value
{
    self = [super init];
    if (self) {
        self.value = value;
    }
    return self;
}

@end
