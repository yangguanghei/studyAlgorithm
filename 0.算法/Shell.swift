//
//  Shell.swift
//  0.算法
//
//  Created by 梁森 on 2021/1/15.
//

import Foundation

struct Shell {
	
	// 希尔排序是对插入排序的改进
	static func sort(array: inout [Int]) {
		var h:Int = 1	// 增量
		while h < (array.count / 2 ) {
			h = 2 * h + 1
		}
		while h >= 1 {
			for i in (h..<array.count) {
				for j in stride(from: i, through: h, by: -h) {
					let a = array[j - h]
					let b = array[j]
					let result = compare(a: a , b: b)
					if result == true {
						exchange(array: &array, aIndex: j-h, bIndex: j)
					} else {
						break
					}
				}
			}
			h = h / 2
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
