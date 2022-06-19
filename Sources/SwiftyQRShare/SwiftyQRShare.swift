import SwiftUI

@available(iOS 13.0, *)
    func getQRCode<T: Codable>(from: T) -> UIImage {
        let encoder = JSONEncoder()
        let encodedExam = try? encoder.encode(from)
        return generateQRCode(from: String(decoding: encodedExam ?? Foundation.Data(), as: UTF8.self))
    }

@available(iOS 13.0, *)
    func getQRCodeImage<T: Codable>(from: T) -> Image {
        let encoder = JSONEncoder()
        let encodedExam = try? encoder.encode(from)
        return Image(uiImage: generateQRCode(from: String(decoding: encodedExam ?? Foundation.Data(), as: UTF8.self)))
    }

@available(iOS 13.0, *)
func importObject<T: Codable>(data: Data) -> T? {
    let decoder = JSONDecoder()
    let item = try? decoder.decode(T.self, from: data)
    return item
}


