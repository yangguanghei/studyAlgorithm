//
//  Bubble.swift
//  0.算法
//
//  Created by 梁森 on 2021/1/15.
//

import Foundation

struct Bubble {
	
	#warning("如何使用一个泛型")
	// 冒泡排序时间复杂度是O(n^2)
	static func sort(array: inout [Int]) {
		for i in (1..<array.count).reversed() {	// 倒序遍历， 内层循环每循环一次，参与比较的元素就少一个，因为最大的元素已经排到了最后
			for j in 0..<i {
				let a = array[j]
				let b = array[j + 1]
				let result = compare(a: a, b: b)
				if result == true {
					exchange(array: &array, aIndex: j, bIndex: j + 1)
				}
			}
		}
	}
	
	/// 比较大小
	static func compare(a: Int, b: Int) -> Bool {
		if a > b {
			return true
		} else {
			return false
		}
	}
	
	/// 交换位置
	static func exchange( array: inout [Int], aIndex: Int, bIndex: Int) {
		let temp = array[aIndex]
		array[aIndex] = array[bIndex]
		array[bIndex] = temp
	}
	
}
