//
//  NSDate+Extension.swift
//  TransitApp
//
//  Created by Julio Cesar Fausto on 24/02/16.
//  Copyright © 2016 Julio Cesar Fausto. All rights reserved.
//

import Foundation

//Add a custom initialization method to NSDate to support initialization from a datetime string RFC 3339 compliant
//Example of string: "2015-04-17T13:38:00+02:00"
extension NSDate {
    
    convenience init(datetimeString:String) {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
        formatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
        formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        let nDate = formatter.dateFromString(datetimeString)!
        self.init(timeInterval:0, sinceDate:nDate)
    }
    
}