// 需求：排序前[4,5,6,3,2,1]
// 排序后[1,2,3,4,5,6]

/// array.sort(by: <)

//var array = [4,5,6,3,2,1]
/**
次数        		结果
初始状态       [4,5,6,3,2,1]
第1次		 [5,6,3,2,1,4]
第2次		 [6,3,2,1,4,5]
第3次		 [3,2,1,4,5,6]
第4次		 [2,1,3,4,5,6]
第5次		 [1,2,3,4,5,6]
*/

/**
排序原理：假设最后一个数为最大值，依次和其他索引值比较，如果当前索引值大于其他某个索引值，则先添加到其他索引值后边，并删除该对应的数
*/

var array = [4,5,6,3,2,1,10,7,8,9,6,5,0]
var newArray = array;

for item in newArray {
    for i in 0..<array.count
    {
        let sencondIndex = array.count-i-1
        let newItem = array[sencondIndex]
        if newItem < item  {
            array.insert(item, at: sencondIndex+1)
            if let firstIndex = array.firstIndex(of:item) {
                 array.remove(at: firstIndex)
            }
            break
        }
    }
}


print("\(array)")
