//
//  ViewController.swift
//  DateUTCtoLocalTime
//
//  Created by Carlos  on 14/02/2017.
//  Copyright © 2017 Carlos . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let currentDate = Date()
        
        print(currentDate)
        
        let dateString = "2017-08-16T20:00:00+00:00"
        
        let dateFormatter =  DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date1 = dateFormatter.date(from: dateString)
        let timeZone = TimeZone.autoupdatingCurrent.identifier as String
        dateFormatter.timeZone = TimeZone(identifier: timeZone)
        let date2 = dateFormatter.string(from: date1!)
        
        print(date2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

