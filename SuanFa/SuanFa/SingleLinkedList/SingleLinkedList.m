//
//  SingleLinkedList.m
//  SuanFa
//
//  Created by C on 2019/12/6.
//  Copyright © 2019 cuizhiwei. All rights reserved.
//

#import "SingleLinkedList.h"

@interface SingleLinkedList()

@property (nonatomic, strong) LinkedListNode *head;

@property (nonatomic, strong) LinkedListNode *tail;

@property (nonatomic, assign) NSInteger count;

@end

@implementation SingleLinkedList

- (LinkedListNode *)head
{
    return _head;
}

- (LinkedListNode *)tail
{
    return _tail;
}

- (NSInteger)count
{
    NSInteger count = 0;
    if (self.head == nil)
    {
        return 0;
    }
    
    LinkedListNode *node = self.head;
    while (node)
    {
        node = node.next;
        count ++;
    }
    return count;
}

// MARK: - qyery
/// node:传入index返回节点
- (LinkedListNode *)queryNodeWithIndex:(NSInteger)index
{
    NSInteger count = 0;
    LinkedListNode *node = self.head;
    while (node)
    {
        if (count == index)
        {
            break;
        }
        node = node.next;
        count ++;
    }
    return node;
}

/// node:传入value返回节点
- (LinkedListNode *)queryNodeWithValue:(id)value
{
    LinkedListNode *node = self.head;
    while (node)
    {
        if ([value isEqual:node.value])
        {
            break;
        }
        node = node.next;
    }
    return node;
}

/// node所在位置:传入value返回节点索引
- (NSInteger)queryIndexWithNodeValue:(id)value
{
    NSInteger count = 0;
    LinkedListNode *node = self.head;
    while (node)
    {
        if ([value isEqual:node.value])
        {
            break;
        }
        node = node.next;
        count ++;
    }
    return count;
}

// MARK: - insert
/// 程序入口
/// insertToHead:插入节点到表头
- (void)insertNodeAtHead:(LinkedListNode *)node
{
    if (self.head)
    {
        node.next = self.head;
        self.head = node;
    } else
    {
        self.head = node;
        self.tail = node;
    }
}

/// appendToTail:插入节点到表尾
- (void)appendNodeToTail:(LinkedListNode *)node
{
    if (self.tail)
    {
        self.tail.next = node;
        self.tail = node;
    } else
    {
        self.head = node;
        self.tail = node;
    }
}

/// insert:插入node到指定index
- (void)insertNodeAtIndex:(NSInteger)index withNode:(LinkedListNode *)node
{
    if (index > self.count) return;
    
    if (index == 0)
    {
        node.next = self.head;
        self.head = node;
    } else if (index == self.count)
    {
        self.tail.next = node;
        self.tail = node;
        self.tail.next = nil;
    } else
    {
        LinkedListNode *beforeNode = [self queryNodeWithIndex:index - 1];
        node.next = beforeNode.next;
        beforeNode.next = node;
    }
}

/// bringNodeToHead:把节点带到表头
- (void)bringNodeToHead:(LinkedListNode *)node
{
    if (self.head == node) return;
    if (self.tail == node)
    {
        NSInteger lastCount = [self count] - 2;
        LinkedListNode *lastNodel = [self queryNodeWithIndex:lastCount];
        self.tail = lastNodel;
        self.tail.next = nil;
        
        node.next = self.head;
        self.head = node;
    } else
    {
        NSInteger currentIndex = [self queryIndexWithNodeValue:node.value];
        LinkedListNode *beforNode = [self queryNodeWithIndex:currentIndex-1];
        beforNode.next = node.next;
        node.next = self.head;
        self.head = node;
    }
}

// MARK: - remove
/// removeAll:移除所有节点
- (void)removeAll
{
    self.head = nil;
    self.tail = nil;
}

/// remove:移除尾节点
- (void)removeTailNode
{
    if ([self.tail.value isEqual:self.head.value])
    {
        self.head = nil;
        self.tail = nil;
    } else if ([self.head.next isEqual:self.tail])
    {
        self.head.next = nil;
        self.tail = self.head;
    } else {
        LinkedListNode *beforeNode = [self queryNodeWithIndex:self.count - 2];
        beforeNode.next = nil;
        self.tail = beforeNode;
    }
}

/// remove:移除传入的节点
- (void)removeNode:(LinkedListNode *)node
{
    if ([node.value isEqual:self.head.value])
    {
        node.next = self.head.next;
        self.head = node;
    } else if ([node.value isEqual:self.tail.value])
    {
        [self removeTailNode];
    } else
    {
        LinkedListNode *beforeNode = [self queryNodeWithValue:node.value];
        beforeNode.next = node.next;
        node.next = nil;
    }
}

/// removeAt:移除传入index的节点
- (void)removeNodeAtIndex:(NSInteger)index
{
    if (index >= self.count) return;
    
    if (index == 0)
    {
        LinkedListNode *node = [self queryNodeWithIndex:index];
        node.next = self.head.next;
        self.head = node;
    } else if (index == self.count-1)
    {
        [self removeTailNode];
    } else
    {
        LinkedListNode *node = [self queryNodeWithIndex:index];
        LinkedListNode *beforeNode = [self queryNodeWithIndex:index-1];
        beforeNode.next = node.next;
        node.next = nil;
    }
}

// MARK: - print
- (void)printAllNodes
{
    LinkedListNode *node = self.head;
    
    while (node)
    {
        NSLog(@"%@\n",node.value);
        node = node.next;
    }
}

@end
