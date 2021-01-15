//
//  Insertion.swift
//  0.算法
//
//  Created by 梁森 on 2021/1/15.
//

import Foundation

struct Insertion {
	// 插入排序时间复杂度是O(n^2)
	static func sort(array: inout [Int]) {
		for i in (1..<array.count) {
			for j in (1...i).reversed() {
				let a = array[j - 1]
				let b = array[j]
				let result = compare(a: a , b: b)
				if result == true {
					exchange(array: &array, aIndex: j-1, bIndex: j)
				} else {
					break
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
