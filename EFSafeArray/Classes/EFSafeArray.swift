
import Foundation

// ~
postfix operator ~ 
public postfix func ~ (value: Int?) -> EFSafeInt? {
    return EFSafeInt(value: value)
}
public postfix func ~ (value: Range<Int>?) -> EFSafeRange? {
    return EFSafeRange(value: value)
}
public postfix func ~ (value: CountableClosedRange<Int>?) -> EFSafeRange? {
    guard let value = value else {
        return nil
    }
    return EFSafeRange(value: Range<Int>(value))
}

// Struct
public struct EFSafeInt {
    var index: Int
    init?(value: Int?) {
        guard let value = value else {
            return nil
        }
        self.index = value
    }
}

public struct EFSafeRange {
    var range: Range<Int>
    init?(value: Range<Int>?) {
        guard let value = value else {
            return nil
        }
        self.range = value
    }
}

// Core
public extension Array {
    public subscript(index: EFSafeInt?) -> Element? {
        get {
            if let index = index?.index {
                return (self.startIndex..<self.endIndex).contains(index) ? self[index] : nil
            }
            return nil
        }
        set {
            if let index = index?.index, let newValue = newValue {
                if (self.startIndex..<self.endIndex).contains(index) {
                    self[index] = newValue
                }
            }
        }
    }

    public subscript(bounds: EFSafeRange?) -> ArraySlice<Element>? {
        get {
            if let range = bounds?.range {
                return self[range.clamped(to: self.startIndex ..< self.endIndex)]
            }
            return nil
        }
        set {
            if let range = bounds?.range, let newValue = newValue {
                self[range.clamped(to: self.startIndex ..< self.endIndex)] = newValue
            }
        }
    }
}
