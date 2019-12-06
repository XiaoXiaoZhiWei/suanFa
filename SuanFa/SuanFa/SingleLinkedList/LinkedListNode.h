//
//  LinkedListNode.h
//  SuanFa
//
//  Created by C on 2019/12/6.
//  Copyright © 2019 cuizhiwei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LinkedListNode : NSObject

/// 存储数据
@property (nonatomic, strong) id value;

/// 下一个节点
@property (nonatomic, strong) LinkedListNode *next;

/// 初始化方法
- (instancetype)initWithValue:(id)value;

@end

NS_ASSUME_NONNULL_END
