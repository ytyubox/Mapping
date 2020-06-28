public struct Mapping<T> {
    public init(_ value: T) {
        self.value = value
    }
    
    var value:T
}

extension Mapping {
    
    public func map<U>(_ transform: (T) throws -> U) rethrows -> Mapping<U> {
        let newValue:U = try transform(value)
        return Mapping<U>(newValue)
    }
}
