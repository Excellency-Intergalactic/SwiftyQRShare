# SwiftyQRShare

### A [Swift](https://swift.org) framework for *sharing Data easily with QR Codes* on iOS and iPadOS with [SwiftUI](https://developer.apple.com/xcode/swiftui/).

## How to use
Your Data Model must conform to Codable

### Generate a QR Code:

```swift
// Generate UIImage: 
getQRCode(from: CodableStruct)
// Generate SwiftUI Image: 
getQRCodeImage(from: CodableStruct)
```


### Retrieve Data:
Use a Swift UI View

```swift
struct MyView: View {
    @State var data = 0
    @State var showScanView = false
    var body: some View {
        Button("Scan Code") {
            showScanView.toggle()
        }.sheet(isPresented: $showScanView) {
            DataScanView(value: $data)
        }
    }
}
```
