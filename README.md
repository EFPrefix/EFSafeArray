# EFSafeArray

[![CI Status](http://img.shields.io/travis/EyreFree/EFSafeArray.svg?style=flat)](https://travis-ci.org/EyreFree/EFSafeArray)
[![Version](https://img.shields.io/cocoapods/v/EFSafeArray.svg?style=flat)](http://cocoapods.org/pods/EFSafeArray)
[![License](https://img.shields.io/cocoapods/l/EFSafeArray.svg?style=flat)](http://cocoapods.org/pods/EFSafeArray)
[![Platform](https://img.shields.io/cocoapods/p/EFSafeArray.svg?style=flat)](http://cocoapods.org/pods/EFSafeArray)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- XCode 8.0+
- Swift 3.0+

## Installation

EFSafeArray is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EFSafeArray', '~> 0.0.1'
```

## Use

```swift
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
```

## Author

EyreFree, eyrefree@eyrefree.org

## License

EFSafeArray is available under the MIT license. See the LICENSE file for more info.
