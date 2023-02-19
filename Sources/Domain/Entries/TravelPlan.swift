//
//  TravelPlan.swift
//  Domain
//
//  Created by 김동욱 on 2023/02/18.
//

import Foundation
import CoreLocation

/// 여행 계획
public struct TravelPlan {
    public let title: String
    public let description: String
    public let fromDate: Date?
    public let toDate: Date?
    public let schedules: [Schedule]
    
    public init(title: String,
         description: String,
         fromDate: Date?,
         toDate: Date?,
         schedules: [Schedule]) {
        self.title = title
        self.description = description
        self.fromDate = fromDate
        self.toDate = toDate
        self.schedules = schedules
    }
}

extension TravelPlan: Equatable {
    public static func == (lhs: TravelPlan, rhs: TravelPlan) -> Bool {
        lhs.title == rhs.title &&
        lhs.description == rhs.description &&
        lhs.fromDate == rhs.fromDate &&
        lhs.toDate == rhs.toDate &&
        lhs.schedules == rhs.schedules
    }
}
