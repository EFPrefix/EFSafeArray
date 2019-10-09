//
//  ViewController.swift
//  EFSafeArray
//
//  Created by EyreFree on 07/28/2017.
//  Copyright (c) 2017 EyreFree. All rights reserved.
//

import UIKit
import EFSafeArray

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
        // Get Index
        let xxx = list[0]               // xxx: Int = 1
        let zzz = list[0~]              // zzz: Int? = 1
        let yyy = list[10~]             // yyy: Int? = nil

        // Set Index
        list[0] = 0                     // list = [0, 2, 3, 4, 5, 6, 7, 8, 9, 0]
        list[0~] = 1                    // list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
        list[10~] = 10                  // list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

        // Get Bounds
        let iiii = list[(0...5)~]       // iiii: ArraySlice<Int>? = [1, 2, 3, 4, 5, 6]
        let oooo = list[(-1...12)~]     // oooo: ArraySlice<Int>? = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]

        // Set Bounds
        list[(0...5)~] = [1]            // list = [1, 7, 8, 9, 0]
        list[(-1...12)~] = [2, 3, 4, 5] // list = [2, 3, 4, 5]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
