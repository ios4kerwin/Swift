//
//  MockCodeReader.swift
//  AVFoundationQRcodeTests
//
//  Created by Daniel Carlos on 10/14/17.
//  Copyright © 2017 Carlos Butron. All rights reserved.
//

import UIKit
@testable import AVFoundationQRcode


class MockCodeReader: CodeReader {
    private(set) var videoPreview = CALayer()
    var completion: ((CodeReadResult) -> Void)?
    
    func startReading(completion: @escaping (CodeReadResult) -> Void) {
        self.completion = completion
    }
    
    func stopReading() {
    }
}
