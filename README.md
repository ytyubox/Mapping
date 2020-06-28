# Mapping

Mapping give your variable a new way to generate new type. By this way, we can use dependance rejection by the concept of functional programming.


## Encode JSON before
```swift

let model:SomeModel = ...
let encoder = JSONEncoder()
let data = try encoder.encode(model)
```
## Encode JSON with Mapping
```swift
let encoder = JSONEncoder()
let data = try Mapping(model)
    .map(encoder.encode)    
```
