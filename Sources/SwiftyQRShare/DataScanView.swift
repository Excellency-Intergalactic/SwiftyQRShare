//
//  SwiftUIView.swift
//  
//
//  Created by Luca on 15/05/2022.
//

import SwiftUI

@available(iOS 13.0.0, *)
struct DataScanView<T: Codable>: View {
    @Binding var value: T
    var body: some View {
        CodeScannerView(codeTypes: [.qr]) { response in
            if case let .success(result) = response {
                let imported = importObject(data: Data(result.string.utf8)) ?? value
                // Return Value
                value = imported
            }
        }
    }
}

@available(iOS 13.0.0, *)
struct DataScanView_Previews: PreviewProvider {
    static var previews: some View {
        DataScanView(value: .constant(0))
    }
}
