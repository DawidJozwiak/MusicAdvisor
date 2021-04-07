//
//  BillboardModel.swift
//  Music Advisor
//
//  Created by Dawid Jóźwiak on 4/7/21.
//

import Foundation

struct BillboardModel{
    let rank: String
    let title: String
    let artist: String
    let detail: String
    
    var rankImage: String{
        switch rank{
        case "1":
            return ""
        case "2":
            return ""
        case "3":
            return ""
        case "4":
            return ""
        case "5":
            return ""
        default:
            return ""
        }
    }
    
    var detailImage : String{
        switch detail{
        case "new":
            return ""
        case "down":
            return ""
        case "same":
            return ""
        case "up":
            return ""
        default:
            return ""
        }
    }
    

}
