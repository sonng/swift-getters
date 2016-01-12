# swift-getters

If you define a class with a property that's a value type (ie Array) with custom setters and getters, then when you mutate that property (ie .append) the setter is called.
