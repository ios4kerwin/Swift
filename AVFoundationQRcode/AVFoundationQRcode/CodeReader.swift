//
//  CodeReader.swift
//  AVFoundationQRcode
//
//  Created by Daniel Carlos on 10/14/17.
//  Copyright © 2017 Carlos Butron. All rights reserved.
//

import UIKit

protocol CodeReader {
    var videoPreview: CALayer {get}
    func startReading(completion: @escaping (CodeReadResult) -> Void)
    func stopReading()
}

enum CodeReadResult {
    typealias Elemento = String
    case success(Elemento)
    case failure(Error)
    
    enum Error: Swift.Error {
        case noCameraAvailable
    }
}
