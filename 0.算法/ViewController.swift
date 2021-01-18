//
//  ViewController.swift
//  0.算法
//
//  Created by 梁森 on 2021/1/15.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		view.backgroundColor = .green
	}

	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//		bubbleTest()
//		selectionTest()
//		insertionTest()
//		shellTest()
        mergeTest()
	}

}


extension ViewController {
	
    /// 归并测试
    func mergeTest() {
        var array = [8, 6, 4, 5, 7, 2, 1, 3]
        Merge.sort(array: &array)
        print(array)
    }
    
	/// 冒泡测试
	func bubbleTest() {
		var array = [6, 5, 4, 3, 2, 1]
		Bubble.sort(array: &array)
		print(array)
	}
	
	/// 选择排序测试
	func selectionTest() {
		var array = [4, 6, 8, 7, 9, 2]
		Selection.sort(array: &array)
		print(array)
	}
	
	/// 插入排序测试
	func insertionTest() {
		var array = [6, 5, 4, 3, 2, 1]
		Insertion.sort(array: &array)
		print(array)
	}
	
	/// 希尔排序测试
	func shellTest() {
		var array = [Int]()
		for i in stride(from: 10000, through: 0, by: -1) {
			array.append(i)
		}
		print("\(Date())")
		Shell.sort(array: &array)
		print("\(Date())")
		
		print("😄😄😄😄😄")
		
		print("\(Date())")
		Selection.sort(array: &array)
		print("\(Date())")
	}
}
