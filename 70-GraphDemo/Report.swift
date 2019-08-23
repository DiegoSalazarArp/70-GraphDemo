//
//  Report.swift
//  70-GraphDemo
//
//  Created by Diego Salazar Arp on 23-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import Foundation


struct Report: Hashable {
    let year: String
    let revenue: Double
}


extension Report {
    static func all() -> [Report]{
        return [
            
            Report(year: "2001", revenue: 2500),
            Report(year: "2002", revenue: 4500),
            Report(year: "2003", revenue: 6500)
            
        ]
    }
}
