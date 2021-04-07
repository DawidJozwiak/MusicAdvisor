//
//  BillboardData.swift
//  Music Advisor
//
//  Created by Dawid Jóźwiak on 4/7/21.
//

import Foundation

struct BillboardData: Decodable{
    let info: Info
    let content: Content
}

struct Info: Decodable{
    let category: String
}

struct Content: Decodable{
    let one, two, three, four, five: One
    private enum CodingKeys: String, CodingKey {case one = "1", two = "2", three = "3", four = "4", five = "5"}
}

struct One: Decodable{
    let rank: String
    let title: String
    let artist: String
    let detail: String
    
}
