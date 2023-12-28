//
//  String.swift
//  ProductList
//
//  Created by Kaushik on 27/12/23.
//

import Foundation

extension String {
    func getDate(_ stringDate: String = "yyyy-MM-dd") -> Date? {
        let dateformatter = DateFormatter()
        dateformatter.locale = Locale(identifier: "en_US_POSIX")
        dateformatter.timeZone = TimeZone(identifier: "UTC")
        return dateformatter.date(from: stringDate)
    }
}
