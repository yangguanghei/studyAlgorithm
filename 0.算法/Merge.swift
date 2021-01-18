//
//  Merge.swift
//  0.算法
//
//  Created by 梁森 on 2021/1/18.
//

import Foundation

/// 归并排序
struct Merge {
    
    static var assist = [Int]()
    
    static func sort(array: inout [Int]) {
        sort(array: &array, min: 0, max: array.count - 1)
    }
    
    static func sort(array: inout [Int], min: Int, max: Int) {
        if max <= min {
            return
        }
        let mid = min + (max - min) / 2
        sort(array: &array, min: min, max: mid)
        sort(array: &array, min: mid + 1, max: max)
        merge(array: &array, min: min, mid: mid, max: max)
    }
    
    static func merge(array: inout [Int], min: Int, mid: Int, max: Int) {
        var i = min
        var p1 = min
        var p2 = mid + 1
        while p1 <= mid && p2 <= max {
            let result = compare(a: array[p1], b: array[p2])
            if result == true {
                assist[i] = array[p2]
                p2 += 1
                i += 1
            } else {
                assist[i] = array[p1]
                p1 += 1
                i += 1
            }
        }
        while p1 <= mid {
            assist[i] = p1
            p1 += 1
            i += 1
        }
        while p2 <= max {
            assist[i] = p2
            p2 += 1
            i += 1
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

    
}
