// Copyright 2021 Yandex LLC. All rights reserved.

let dylib = DylibImpl(path: "libDylib.dylib")
let result = dylib.performSampleTask("ExampleTask", ["exampleKey": "exampleValue"])
print("Result: \(result)")
