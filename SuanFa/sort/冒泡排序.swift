
/**
冒泡次数        		冒泡结果
初始状态			4,5,6,3,2,1
第1次冒泡			4,5,3,2,1,6
第2次冒泡			4,3,2,1,5,6
第3次冒泡			3,2,1,4,5,6
第4次冒泡			2,1,3,4,5,6
第5次冒泡			1,2,3,4,5,6
*/

/**
排序原理：比较相邻元素，如果前一个比后一个大，就交互位置。
对每一对相邻元素做同样工作，从开始到结束。
*/

/**
时间复杂度：
空间复杂度：
*/

var array = [4,5,6,3,2,1]

for _ in array {
	for i in 0 ..< array.count {
		let firstItem = array[i]
		var secondItem = firstItem
		if i+1 < array.count {
			secondItem = array[i+1]
		}
		
		if firstItem > secondItem {
			array.replaceSubrange(i+1..<i+2, with: [firstItem])
			array.replaceSubrange(i..<i+1, with: [secondItem])
		}
	}
}


print(array)