//
//  File.swift
//  
//
//  Created by Luca on 15/05/2022.
//

import CoreImage.CIFilterBuiltins
import SwiftUI

@available(iOS 13.0, *)
func generateQRCode(from string: String) -> UIImage {
        let context = CIContext()
        let filter = CIFilter.qrCodeGenerator()
        
        filter.message = Data(string.utf8)
        filter.correctionLevel = "H"

        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }

        return UIImage(systemName: "xmark") ?? UIImage()
    }

