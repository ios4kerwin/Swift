//
//  AVFoundationQRcodeTests.swift
//  AVFoundationQRcodeTests
//
//  Created by Carlos Butron on 07/12/14.
//  Copyright (c) 2014 Carlos Butron. All rights reserved.
//

import UIKit
import XCTest
@testable import AVFoundationQRcode

class AVFoundationQRcodeTests: XCTestCase {
    
    var sut: ViewController!
    var mockCodeReader: MockCodeReader!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nav = storyboard.instantiateInitialViewController() as? UINavigationController
        sut = nav?.viewControllers.first as? ViewController
        mockCodeReader = MockCodeReader()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_givenViewController_whenLoaded_thenAddVideoPreviewLayer() {
        sut.codeReader = mockCodeReader
        
        sut.loadViewIfNeeded()
        
        XCTAssertTrue(sut.previewView.layer.sublayers?.contains(mockCodeReader.videoPreview) ?? false)
    }
    
    func test_givenViewController_whenReadCode_thenUpdateUrl() {
        sut.codeReader = mockCodeReader
        sut.loadViewIfNeeded()
        sut.viewDidAppear(false)
        
        mockCodeReader.completion?(.success("www.mockurl.com"))
        
        XCTAssertEqual(sut.sendURL, "www.mockurl.com")
    }
    
}
