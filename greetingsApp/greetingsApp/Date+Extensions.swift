//
//  Date+Extensions.swift
//  greetingsApp
//
//  Created by Jackeline Pires De Lima on 08/11/22.
//

import Foundation

extension Date {
    func string(with format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
