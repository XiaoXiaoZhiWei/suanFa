//
//  ViewController.m
//  SuanFa
//
//  Created by C on 2019/12/6.
//  Copyright © 2019 cuizhiwei. All rights reserved.
//

#import "ViewController.h"
#import "SingleLinkedList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    LinkedListNode *headNode = [[LinkedListNode alloc] initWithValue:@{@"key":@"你好"}];
    LinkedListNode *taiNode = [[LinkedListNode alloc] initWithValue:@{@"key":@"小米"}];
    SingleLinkedList *list = [[SingleLinkedList alloc] init];
    [list insertNodeAtHead:headNode];
    [list appendNodeToTail:taiNode];
//    [list printAllNodes];
    
    NSInteger count = list.count;
    NSLog(@"%ld",(long)count);
    
    LinkedListNode *oneNode = [[LinkedListNode alloc] initWithValue:@{@"key":@"谁他妈买"}];
    [list insertNodeAtHead:oneNode];
    [list printAllNodes];
    
//    LinkedListNode *niNode = [list queryNodeWithIndex:1];
//    NSLog(@"%@",niNode.value);
    
//    LinkedListNode *xiaoNode = [list queryNodeWithValue:@"小米"];
//    NSLog(@"%@",xiaoNode.value);
    
//    [list bringNodeToHead:oneNode];
//    NSLog(@"%@",list.head.value);
    
//    [list bringNodeToHead:taiNode];
//    NSLog(@"%@",list.head.value);
    
//        [list bringNodeToHead:headNode];
//        NSLog(@"%@",list.head.value);
    
//    LinkedListNode *twoNode = [[LinkedListNode alloc] initWithValue:@"每一个人"];
//    [list insertNodeAtIndex:0 withNode:twoNode];
//    NSLog(@"head=%@",list.head.value);
//    NSLog(@"tail=%@",list.tail.value);
//    NSLog(@"count=%ld",(long)list.count);
//    [list printAllNodes];
    
//    [list removeTailNode];
//    [list removeTailNode];
//    [list removeTailNode];
//    [list printAllNodes];
    
//    [list removeNode:oneNode];
//    [list printAllNodes];
    
//    [list removeAll];
//    [list printAllNodes];
}


@end
