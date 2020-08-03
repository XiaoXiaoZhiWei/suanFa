// 需求：排序前[4,5,6,3,2,1]
// 排序后[1,2,3,4,5,6]

/// 冒泡排序
/// array.sort(by: <)

//var array = [4,5,6,3,2,1]
// 1. [5,6,3,2,1,4]
// 2. [6,3,2,1,4,5]
// 3. [3,2,1,4,5,6]
// 4. [2,1,3,4,5,6]
// 5. [1,2,3,4,5,6]

var array = [4,5,6,3,2,1,10,7,8,9,6,5,0]
var newArray = array;
 
/// 顺序从小到大
/// 与最后一个数比较，如果大，添加到比较数后面添加，并删除对应的数

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
