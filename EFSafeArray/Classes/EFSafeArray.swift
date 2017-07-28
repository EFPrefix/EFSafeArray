import Foundation

public extension Array {

    public subscript(key: String?) -> Element? {
        get {
            if let key = key {
                // Int
                if let indexValue = Index(key) {
                    return (self.startIndex..<self.endIndex).contains(indexValue) ? self[indexValue] : nil
                }
            }
            return nil
        }
        set {
            if let key = key, let newValue = newValue {
                // Int
                if let indexValue = Index(key) {
                    if (self.startIndex..<self.endIndex).contains(indexValue) {
                        self[indexValue] = newValue
                    }
                }
            }
        }
    }

    public subscript(range range: String?) -> ArraySlice<Element>? {
        get {
            if let range = range {
                // Range<Int>
                if let rangeValue = stringToRange(expression: range) {
                    return self[rangeValue.clamped(to: self.startIndex ..< self.endIndex)]
                }
            }
            return nil
        }
        set {
            if let range = range, let newValue = newValue {
                // Range<Int>
                if let rangeValue = stringToRange(expression: range) {
                    self[rangeValue.clamped(to: self.startIndex ..< self.endIndex)] = newValue
                }
            }
        }
    }

    private func stringToRange(expression: String) -> Range<Int>? {
        let expressionReady = String(expression.characters.filter { "0123456789.<".characters.contains($0) })
        let operators = ["...", "..<"]
        for (index, value) in operators.enumerated() {
            if expressionReady.hasSubString(value) {
                let bounds = expressionReady.components(separatedBy: value)
                if bounds.count == 2, let lower = Int(bounds[0]), let upper = Int(bounds[1]) {
                    if 0 == index {
                        // ...
                        return Range<Int>(lower...upper)
                    } else {
                        // ..<
                        return Range<Int>(lower..<upper)
                    }
                }
            }
        }
        return nil
    }
}

extension String {
    // 检测是否存在某子字符串(无视大小写)
    func hasSubString(_ string: String) -> Bool {
        return nil != self.range(of: string, options: String.CompareOptions.caseInsensitive, range: nil, locale: nil)
    }
}
