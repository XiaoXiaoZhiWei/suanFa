## 算法

## 1. 两数之和

## 单链表
```
/// 头节点
- (LinkedListNode *)head;

/// 尾节点
- (LinkedListNode *)tail;

/// 节点长度
- (NSInteger)count;


// MARK: - qyery
/// node:传入index返回节点
- (LinkedListNode *)queryNodeWithIndex:(NSInteger)index;

/// node:传入value返回节点
- (LinkedListNode *)queryNodeWithValue:(id)value;

/// index:传入value返回节点索引
- (NSInteger)queryIndexWithNodeValue:(id)value;


// MARK: - insert
/// insertToHead:插入节点到表头
- (void)insertNodeAtHead:(LinkedListNode *)node;

/// appendToTail:插入节点到表尾
- (void)appendNodeToTail:(LinkedListNode *)node;

/// bringNodeToHead:把节点带到表头
- (void)bringNodeToHead:(LinkedListNode *)node;

/// insert:插入node到指定index
- (void)insertNodeAtIndex:(NSInteger)index withNode:(LinkedListNode *)node;


// MARK: - remove
/// removeAll:移除所有节点
- (void)removeAll;

/// remove:移除尾节点
- (void)removeTailNode;

/// remove:移除传入的节点
- (void)removeNode:(LinkedListNode *)node;

/// removeAt:移除传入index的节点
- (void)removeNodeAtIndex:(NSInteger)index;


// MARK: - print
- (void)printAllNodes;
```
