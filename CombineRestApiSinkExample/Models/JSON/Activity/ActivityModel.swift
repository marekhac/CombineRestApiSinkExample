//
//  PlaceModel.swift
//  CombineRestApiSinkExample
//
//  Created by MARXSOFT Marek Hac on 04/03/2021.
//

import Foundation

struct ActivityModel : Decodable {
    let accessibility: Double
    let activity: String
    let key: String
    let link: String
    let participants: Int
    let price : Double
    let type : String
}
