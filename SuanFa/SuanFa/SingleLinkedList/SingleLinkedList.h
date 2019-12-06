//
//  SingleLinkedList.h
//  SuanFa
//
//  Created by C on 2019/12/6.
//  Copyright © 2019 cuizhiwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface SingleLinkedList : NSObject

@property (nonatomic, strong) LinkedListNode *head;

@property (nonatomic, strong) LinkedListNode *tail;

// MARK: - qyery
/// node:传入index返回节点
- (LinkedListNode *)queryNodeWithIndex:(NSInteger)index;

/// node:传入value返回节点
- (LinkedListNode *)queryNodeWithValue:(id)value;

// MARK: - insert
/// insert:插入node到指定index
- (void)insertNodeAtIndex:(NSInteger)index;

/// bringNodeToHead:把节点带到表头
- (void)bringNodeToHead:(LinkedListNode *)node;

/// insertToHead:插入节点到表头
- (void)insertNodeAtHead:(LinkedListNode *)node;

/// appendToTail:插入节点到表尾
- (void)appendNodeToTail:(LinkedListNode *)node;

// MARK: - remove
/// removeAll:移除所有节点
- (void)removeAll;

/// remove:移除传入的节点
- (void)removeNode:(LinkedListNode *)node;

/// remove:移除尾节点
- (void)removeTailNode;

/// removeAt:移除传入index的节点
- (void)removeNodeAtIndex:(NSInteger)index;

// MARK: - print
- (void)printAllNodes;

@end

NS_ASSUME_NONNULL_END
