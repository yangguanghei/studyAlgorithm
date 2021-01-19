//
//  Quick.swift
//  0.算法
//
//  Created by 梁森 on 2021/1/19.
//

import Foundation

// 快速排序
struct Quick {
    
    static func sort(array: inout [Int]) {
        sort(array: &array, min: 0, max: array.count - 1)
    }
    
    /// 对数组某个区间进行排序
    private static func sort(array: inout [Int], min: Int, max: Int) {
        if max <= min {
            return
        }
        
        let par = partition(array: &array, min: min, max: max)
        sort(array: &array, min: min, max: par - 1)
        sort(array: &array, min: par + 1, max: max)
    }
    
    /// 返回中间值下标
    private static func partition(array: inout [Int], min: Int, max: Int) -> Int {
        let key = array[min]
        var left = min + 1
        var right = max
        while true {
            
            while array[right] > key {
                right -= 1
                if right == min {
                    break
                }
            }
            
            while array[left] < key {
                left += 1
                if left == max {
                    break
                }
            }
            
            if left >= right {
                break
            } else {
                exchange(array: &array, aIndex: left, bIndex: right)
            }
        }
        exchange(array: &array, aIndex: min, bIndex: right)
        return right
    }
    
    /// 比较大小
    private static func less(a: Int, b: Int) -> Bool {
        if a < b {
            return true
        } else {
            return false
        }
    }
    
    /// 交换位置
    private static func exchange( array: inout [Int], aIndex: Int, bIndex: Int) {
        let temp = array[aIndex]
        array[aIndex] = array[bIndex]
        array[bIndex] = temp
    }
    
}
