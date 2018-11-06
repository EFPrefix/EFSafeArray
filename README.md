![](https://raw.githubusercontent.com/EFPrefix/EFSafeArray/master/assets/EFSafeArray.png)

<p align="center">
    <a href="https://travis-ci.org/EFPrefix/EFSafeArray">
    	<img src="http://img.shields.io/travis/EFPrefix/EFSafeArray.svg">
    </a>
    <a href="http://cocoapods.org/pods/EFSafeArray">
    	<img src="https://img.shields.io/cocoapods/v/EFSafeArray.svg?style=flat">
    </a>
    <a href="http://cocoapods.org/pods/EFSafeArray">
    	<img src="https://img.shields.io/cocoapods/p/EFSafeArray.svg?style=flat">
    </a>
    <a href="https://github.com/apple/swift">
    	<img src="https://img.shields.io/badge/language-swift-orange.svg">
    </a>
    <a href="https://raw.githubusercontent.com/EFPrefix/EFSafeArray/master/LICENSE">
    	<img src="https://img.shields.io/cocoapods/l/EFSafeArray.svg?style=flat">
    </a>
    <a href="https://twitter.com/EyreFree777">
    	<img src="https://img.shields.io/badge/twitter-@EyreFree777-blue.svg?style=flat">
    </a>
    <a href="http://weibo.com/eyrefree777">
    	<img src="https://img.shields.io/badge/weibo-@EyreFree-red.svg?style=flat">
    </a>
    <img src="https://img.shields.io/badge/made%20with-%3C3-orange.svg">
</p>

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

| Version | Needs                                |
|:--------|:-------------------------------------|
| 0.x     | XCode 8.0+<br>Swift 3.0+<br>iOS 8.0+ |
| 4.x     | XCode 9.0+<br>Swift 4.0+<br>iOS 8.0+ |

## Installation

EFSafeArray is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'EFSafeArray'
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

![](https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/License_icon-mit-88x31-2.svg/128px-License_icon-mit-88x31-2.svg.png)

EFSafeArray is available under the MIT license. See the LICENSE file for more info.
