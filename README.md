![](https://raw.githubusercontent.com/EFPrefix/EFSafeArray/master/Assets/EFSafeArray.png)

<p align="center">
    <a href="https://github.com/Carthage/Carthage/">
        <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat">
    </a>
    <a href="https://swiftpackageindex.com/EFPrefix/EFSafeArray">
        <img src="https://img.shields.io/badge/SPM-ready-orange.svg">
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
</p>

EFSafeArray is an extension to make array subscript safe, nil will be return instead of crash if index is out of range, it works on `iOS`, `macOS`, `watchOS` and `tvOS`.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

- Xcode 16+
- Swift 6.0+

## Installation

### CocoaPods

EFSafeArray is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod 'EFSafeArray'
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the Swift compiler.

Once you have your Swift package set up, adding EFSafeArray as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/EFPrefix/EFSafeArray.git", .upToNextMinor(from: "6.0.0.0"))
]
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
