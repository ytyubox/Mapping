public struct Mapping<T> {
    public init(_ value: T) {
        self.value = value
    }
    
    public var value:T
}

extension Mapping {
    
    public func map<U>(_ transform: (T) throws -> U) rethrows -> Mapping<U> {
        let newValue:U = try transform(value)
        return Mapping<U>(newValue)
    }
}
@propertyWrapper
public
struct Mapable<Value> {
    
    public var projectedValue: Mapping<Value>
    public var wrappedValue: Value {
        get {
            projectedValue.value
        }
        set {
            projectedValue.value = newValue
        }
    }
    
    public init(wrappedValue: Value) {
        projectedValue = Mapping(wrappedValue)
    }
}
