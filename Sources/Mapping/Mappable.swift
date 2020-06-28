
@propertyWrapper
public
struct Mappable<Value> {
    
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
