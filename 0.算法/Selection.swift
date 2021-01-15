//
//  Selection.swift
//  0.算法
//
//  Created by 梁森 on 2021/1/15.
//

import Foundation

struct Selection {
	// 选择排序时间复杂度是O(n^2)
	static func sort(array: inout [Int]) {
		for i in (0..<array.count-1) {
			var minIndex = i	// 默认最小元素的下标为第一个元素的下标
			for j in i+1..<array.count {
				let a = array[minIndex]
				let b = array[j]
				let result = compare(a: a, b: b)
				if result == true {
					minIndex = j	// 如果找到一个更小的元素，就将该元素下标作为最小元素的下标
				}
			}
			exchange(array: &array, aIndex: i, bIndex: minIndex)
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
